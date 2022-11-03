#include "boost/date_time/posix_time/posix_time.hpp"
#include "boost/date_time/gregorian/gregorian.hpp"

#include "CLog.hpp"
#include "CLogListenerConsole.hpp"
#include "CLogListenerFile.hpp"
#include "CSingleton.hpp"
#include "CError.h"
#include "CDatabase.hpp"

#include "CDatabaseExample.hpp"
#include "../CDatabaseBanana.h"
#include "../CValue.h"
#include "./helpers/CTimeUtils.hpp"

#define CONFIG_PATH "config"
#define LOGS_PROPERTIES_FILE "logs.ini"

#define SCHEMA_NAME "MIC"
#define HOST_NAME "127.0.0.1:3306"
#define USER_NAME "root"
#define PASSWORD_USER "root"

#define TIME_SCAN_CYCLE_S 900 //15 min

#include "boost/date_time/posix_time/posix_time.hpp"
#include "boost/date_time/gregorian/gregorian.hpp"

#include "CLog.hpp"
#include "CLogListenerConsole.hpp"
#include "CLogListenerFile.hpp"
#include "CSingleton.hpp"
#include "CError.h"
#include "CDatabase.hpp"

#include "../CDatabaseBanana.h"
#include "../CSector.h"
#include "../CPipe.h"
#include "../CConnection.h"

#include <vector>

#define CONFIG_PATH "config"
#define LOGS_PROPERTIES_FILE "logs.ini"

#define SCHEMA_NAME "test_p2"
#define HOST_NAME "127.0.0.1:3306"
#define USER_NAME "root"
#define PASSWORD_USER "root"

#define TIME_SCAN_CYCLE_S 900 //15 min

int main(void) {

	CDatabaseBanana dbObject;

	try {

		CError::ReservaPool();

		//  ---------------------------- INIT RESOURCES  ---------------------------- 

		//Configure logs
		CLog log("log");
		if (!log.initializeParametersFromIniFile(CONFIG_PATH, LOGS_PROPERTIES_FILE)) {
			std::cout << "ERROR reading database log in file: " << CONFIG_PATH << "/" << LOGS_PROPERTIES_FILE << std::endl;
			return 0;
		}
		log.println(boost::log::trivial::fatal, "Log initialized");

		CError::LiberaPool();

		uint64_t lastExecution = 0;

		//  ---------------------------- START SCAN CYCLE ---------------------------- 
		while (1) {
			boost::posix_time::ptime execTime = boost::posix_time::second_clock::local_time();

			if ((helpers::CTimeUtils::seconds_from_epoch(execTime) - lastExecution) >= TIME_SCAN_CYCLE_S) {

				//The content of this if should go in a execute function of the object which will contain the intelligence module

				log.println(boost::log::trivial::trace, "Starting intelligence execution cycle");

				// ---------------------------- GET DATA FROM DB  ---------------------------- 

				//DDBB connection

				dbObject.Conectar(SCHEMA_NAME, HOST_NAME, USER_NAME, PASSWORD_USER);
				log.println(boost::log::trivial::trace, "Hemos conectado con la DB para hacer getters de info");

				// SYNCRONIZE THE STRUCTURE OF THE NETWORK
				std::vector<boost::shared_ptr<CSector>> v_Sectors;
				std::vector<boost::shared_ptr<CPipe>> v_Pipes;
				std::vector<boost::shared_ptr<CConnection>> v_Connections;

				dbObject.getSectors(v_Sectors);
				dbObject.getPipes(v_Pipes);
				dbObject.getConnections(v_Connections);

				// Syncronize the sensor data

				for (size_t i = 0; i < v_Sectors.size(); i++)
				{
					dbObject.getSectors(v_Sectors);
				}


				dbObject.Desconectar();

				// ---------------------------- PROCESS OF DATA & INTELLIGENCE ---------------------------- 

				/*




				// ---------------------------- INSERT RESULTS IN db  ---------------------------- 

				//DDBB connection
				dbObject.Conectar(SCHEMA_NAME, HOST_NAME, USER_NAME, PASSWORD_USER);
				log.println(boost::log::trivial::trace, "Hemos conectado con la DB para hacer inserts de info");

				//Insert stuff in DB
				dbObject.ComienzaTransaccion();

				//Do inserts of data
				bool resultInsert = true;

				//Do insert of data 
				//EXAMPLE:
				resultInsert = resultInsert && dbObject.insertPrediction(helpers::CTimeUtils::seconds_from_epoch(execTime), CDatabaseExample::prediction_type::consumption_kWh, false);

				if (resultInsert) {
					log.println(boost::log::trivial::trace, "Data insert OK");
					dbObject.ConfirmarTransaccion();
				}
				else {
					log.println(boost::log::trivial::trace, "Data insert ERROR");
					dbObject.DeshacerTransaccion();
				}

				dbObject.Desconectar();

				lastExecution = helpers::CTimeUtils::seconds_from_epoch(execTime);
			*/
			}
		}

	}
	catch (std::exception& e) {
		//Always close connections in case of error
		dbObject.Desconectar();

		CErrorEnFuncion ef("main(void)");
		std::ostringstream os;
		os << "ERROR:" << e.what();
		std::cout << os.str() << std::endl;
		THROW_ERROR(e, ef);
		return (0);
	}

	return 0;
}