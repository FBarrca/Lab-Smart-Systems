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
				//std::vector<boost::shared_ptr<CConnection>> v_Connections;

				//std::vector<boost::shared_ptr<CWaterValve>> v_ChangedValves;

				dbObject.getSectors(v_Sectors);
				dbObject.getPipes(v_Pipes);
				//dbObject.getConnections(v_Sectors,v_Pipes,v_Connections);

				// Syncronize the sensor data
				for (size_t i = 0; i < v_Sectors.size(); i++)
				{
					dbObject.getSectorPressure(v_Sectors[i], from ,to);
					dbObject.getSectorPumps(v_Sectors[i])
				}
				for (size_t i = 0; i < v_Pipes.size(); i++)
				{
					dbObject.getPipeFlow(v_Pipes[i]);
					dbObject.getPipeValve(v_Pipes[i]);
				}
				dbObject.Desconectar();

				// ---------------------------- PROCESS OF DATA & INTELLIGENCE ---------------------------- 


				for (size_t i = 0; i < v_Sectors.size(); i++)
				{
					////look for drops in sector pressure
					if (DropinPressure(v_Sectors[i]))
					{
						//find Pipes that are in that node 
						std::vector<boost::shared_ptr<CPipe>> v_PipesToSector;
						if (findPipesToSector(v_PipesToSector)) {
							for (size_t j = 0; j < v_PipesToSector.size(); j++)
							{
								//check if other end has also lost preasssure
								CSector otherSector = Pipedestination(v_PipesToSector[j], v_Sectors[i]);
								if (DropinPressure(otherSector)) // if both have lost preasure problem si between
								{
									CloseValve(v_PipesToSector[j]);
								}

							}

						}
					}
					//std::vector<boost::shared_ptr<CPipe>> v_SectorsWithPressDrop;
					//if (DropinPressure(v_Sectors, v_SectorsWithPressDrop)) {
					//	// We try to find if two dropped sectors are connected by a pipe, if so the fault is probabbly at the pipe
					//	

					//}
				}

				// ---------------------------- UPDATE VALVE STATE  ---------------------------- 
				//DDBB connection
				dbObject.Conectar(SCHEMA_NAME, HOST_NAME, USER_NAME, PASSWORD_USER);
				log.println(boost::log::trivial::trace, "Hemos conectado con la DB para hacer inserts de info");

				

				CValue ins_val(60, time(0));
				//Do inserts of data
			
				for (size_t i = 0; i < v_Pipes.size(); i++)
				{
					//Insert stuff in DB
					dbObject.ComienzaTransaccion();
					bool resultInsert = true;
					resultInsert = resultInsert && dbObject.insertValveState(v_Pipes[i]);

					if (resultInsert) {
						log.println(boost::log::trivial::trace, "Data insert OK");
						dbObject.ConfirmarTransaccion();
					}
					else {
						log.println(boost::log::trivial::trace, "Data insert ERROR");
						dbObject.DeshacerTransaccion();
					}

				}
				dbObject.Desconectar();
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