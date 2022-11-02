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

int main(void) { return 0; }
//int main(void){
//
//	//CDatabaseExample dbObject;
//	CDatabaseMIC dbObject;
//	helpers::CTimeUtils ctu;
//	//time_t time = ctu.getTimeTFromYMDHMS(2023, 10, 26, 3, 2, 3);
//	//CValue value(15.5, time);
//	CValue value (69, time(0));
//	
//	try {
//
//		CError::ReservaPool();
//
//		//  ---------------------------- INIT RESOURCES  ---------------------------- 
//
//		//Configure logs
//		CLog log("log");
//		
//		
//		
//		if (!log.initializeParametersFromIniFile(CONFIG_PATH, LOGS_PROPERTIES_FILE)) {
//			std::cout << "ERROR reading database log in file: " << CONFIG_PATH << "/" << LOGS_PROPERTIES_FILE << std::endl;
//			return 0;
//		}
//		log.println(boost::log::trivial::info , "Log initialized");
//
//		
//		
//		CError::LiberaPool();
//
//		uint64_t lastExecution = 0;
//
//		//  ---------------------------- START SCAN CYCLE ---------------------------- 
//		while (1) {
//			boost::posix_time::ptime execTime = boost::posix_time::second_clock::local_time();
//
//			if ((helpers::CTimeUtils::seconds_from_epoch(execTime) - lastExecution) >= TIME_SCAN_CYCLE_S) {
//
//				log.println(boost::log::trivial::trace, "Starting intelligence execution cycle");
//
//				// ---------------------------- INSERT VALUE  ---------------------------- 
//				
//				//DDBB connection
//				dbObject.Conectar(SCHEMA_NAME, HOST_NAME, USER_NAME, PASSWORD_USER);
//				log.println(boost::log::trivial::trace, "Hemos conectado con la DB para hacer inserts de info");
//
//				//Insert stuff in DB
//				dbObject.ComienzaTransaccion();
//
//				CValue ins_val(60, time(0));
//				//Do inserts of data
//				bool resultInsert = true;
//				resultInsert = resultInsert && dbObject.insertValue(5, ins_val);
//				
//				if (resultInsert) {
//					log.println(boost::log::trivial::trace, "Data insert OK");
//					dbObject.ConfirmarTransaccion();
//				}
//				else {
//					log.println(boost::log::trivial::trace, "Data insert ERROR");
//					dbObject.DeshacerTransaccion();
//				}
//
//
//				dbObject.Desconectar();
//				
//				// --------------------------- CHECK IF INSERTED
//
//				dbObject.Conectar(SCHEMA_NAME, HOST_NAME, USER_NAME, PASSWORD_USER);
//				log.println(boost::log::trivial::trace, "Hemos conectado con la DB para hacer gets de info");
//
//				std::vector<CValue> vCValue;
//				dbObject.getValues(5, vCValue);
//
//				if (!findCValueOnVector(vCValue, ins_val))
//					std::cout << "We looked for value of that id on that time but found no data" << std::endl;
//				else
//					std::cout << "Found inserted data at that time" << std::endl;
//
//				dbObject.Desconectar();
//
//				// ---------------------------- UPDATE INSERTED DATA +1 ----------------------
//				ins_val = ins_val + 1;
//
//				dbObject.Conectar(SCHEMA_NAME, HOST_NAME, USER_NAME, PASSWORD_USER);
//				log.println(boost::log::trivial::trace, "Hemos conectado con la DB para hacer updates de info");
//
//				dbObject.updateValue(5, ins_val);
//
//				bool resultUpdate = true;
//				resultUpdate = resultUpdate && dbObject.updateValue(5, ins_val);
//
//				if (resultUpdate) {
//					log.println(boost::log::trivial::trace, "Data insert OK");
//					dbObject.ConfirmarTransaccion();
//				}
//				else {
//					log.println(boost::log::trivial::trace, "Data insert ERROR");
//					dbObject.DeshacerTransaccion();
//				}
//
//				dbObject.Desconectar();
//
//				// --------------------------- CHECK IF UPDATED
//
//				dbObject.Conectar(SCHEMA_NAME, HOST_NAME, USER_NAME, PASSWORD_USER);
//				log.println(boost::log::trivial::trace, "Hemos conectado con la DB para hacer gets de info");
//
//				std::vector<CValue> vCValueUpdate;
//				dbObject.getValues(5, vCValueUpdate);
//
//			
//
//				if (!findCValueOnVector(vCValueUpdate, ins_val))
//					std::cout << "We looked for value of that id on that time but found no data" << std::endl;
//				else
//					std::cout << "POSTUPDATE:Found inserted data at that time" << std::endl;
//
//				dbObject.Desconectar();
//
//				// ---------------------------- DELETE DATA  ---------------------------- 
//
//				dbObject.Conectar(SCHEMA_NAME, HOST_NAME, USER_NAME, PASSWORD_USER);
//				log.println(boost::log::trivial::trace, "Hemos conectado con la DB para hacer updates de info");
//
//				dbObject.updateValue(5, ins_val);
//
//				bool resultDelete = true;
//				resultDelete = resultDelete && dbObject.deleteValue(5, ins_val);
//
//				if (resultDelete) {
//					log.println(boost::log::trivial::trace, "Data insert OK");
//					dbObject.ConfirmarTransaccion();
//				}
//				else {
//					log.println(boost::log::trivial::trace, "Data insert ERROR");
//					dbObject.DeshacerTransaccion();
//				}
//
//				dbObject.Desconectar();
//
//				dbObject.Conectar(SCHEMA_NAME, HOST_NAME, USER_NAME, PASSWORD_USER);
//				log.println(boost::log::trivial::trace, "Hemos conectado con la DB para hacer gets de info");
//
//				std::vector<CValue> vCValueDelete;
//				dbObject.getValues(5, vCValueDelete);
//
//
//
//				if (!findCValueOnVector(vCValueDelete, ins_val))
//					std::cout << "DELETE: We looked for value of that id on that time but found no data" << std::endl;
//				else
//					std::cout << "DELETE: Found inserted data at that time" << std::endl;
//
//				dbObject.Desconectar();
//
//
//
//				lastExecution = helpers::CTimeUtils::seconds_from_epoch(execTime);
//			}
//		}
//
//	}
//	catch (std::exception &e) {
//		//Always close connections in case of error
//		dbObject.Desconectar();
//
//		CErrorEnFuncion ef("main(void)");
//		std::ostringstream os; 
//		os << "ERROR:" << e.what(); 
//		std::cout << os.str() << std::endl;
//		THROW_ERROR(e, ef);
//		return (0);
//	}
//
//	return 0;
//}
//
