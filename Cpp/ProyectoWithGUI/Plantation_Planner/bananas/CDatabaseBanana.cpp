#include "CDatabaseBanana.h"
#include <iostream>
#include <time.h>
#include "CValue.h"
#include "CSector.h"
#include "CEstate.h"
#include "CPipe.h"
#include "../helpers/CTimeUtils.hpp"
#include "CSensor.h"
#include "./CActType.h"
#include "./CActuator.h"

CDatabaseBanana::CDatabaseBanana()
{
}

CDatabaseBanana::~CDatabaseBanana()
{
}

bool CDatabaseBanana::getSectors(std::list<std::shared_ptr<CSector>> &sectors)
{
	/*
	* get information of every SECTOR:
	* 
	* This function submits a query to the database to get the parameters of the table SECTOR.
	* Iterates that table and stores each row as a Sector.
	* Stores the data on a shared_ptr class CSector
	* 
	* @param $sectors direcci�n de memoria de la lista de shared_ptr sobre la que iterar.
	* 
	*/



	sql::ResultSet *res = NULL;
	sql::Statement *p_stmt = NULL;
	bool result = false;

	std::ostringstream os;
	os << "SELECT ID_SECTOR AS ID, LON, LAT, WATER_DEMAND AS H20 FROM SECTOR;" << std::endl; // << prosumer_id;
	try
	{
		if (m_p_con != NULL)
		{
			std::string query;
			query = os.str();
			std::cout << query << std::endl;
			p_stmt = m_p_con->createStatement();
			res = p_stmt->executeQuery(query);

			while (res->next())
			{

				CEstate estate = CEstate(res->getDouble("LON"), res->getDouble("LAT"));
				sectors.push_back(std::make_shared<CSector>(res->getInt64("ID"), estate, res->getDouble("H20")));
				// Print ID string
				_log.println(boost::log::trivial::info, "Sector ID: " + std::to_string(res->getInt64("ID")));
				result = true;
			}

			delete res;
			delete p_stmt;
			p_stmt = NULL;
		}
	}
	catch (sql::SQLException &e)
	{
		if (res != NULL)
			delete res;
		if (p_stmt != NULL)
			delete p_stmt;
		std::ostringstream os;
		os << "ERROR:" << e.what();
		_log.println(boost::log::trivial::error, os.str());
		return false;
	}
	return result;
}

bool CDatabaseBanana::updateWaterdemand(float dem, CSector* sect)
{

	/*
	* function vinculated to the gui.
	* 
	* executes a query to update a value of water demand on a sector 
	*
	* @param dem Demand value to be updated
	*
	*/

	bool error = 0;
	try {
		//This condition checks that there is a connection active
		if (m_p_con != NULL) {
			std::string query = "UPDATE Sector SET Water_demand = " + std::to_string(dem) + " where id_sector =" + std::to_string(sect->get_id());
			std::ostringstream os;
			os << ";";
			query += os.str();
			_log.println(boost::log::trivial::info, query);
			bool result = EjecutaQuery(query);
			return result;
		}
		else {
			error = 1;
		}
	}
	catch (sql::SQLException& e) {
		std::ostringstream os; os << "ERROR:" << e.what(); _log.println(boost::log::trivial::error, os.str());
		error = 1;
	}
	if (error) return 0;
	return 1;
}

bool CDatabaseBanana::getPipes(std::list<std::shared_ptr<CPipe>> &pipes, std::list<std::shared_ptr<CSector>> &sectors)
{
	/*
	* get information of every PIPE:
	*
	* This function submits a query to the database to get the parameters of the table PIPE.
	* Iterates that table and stores each row as a Pipe.
	* Stores the data on a shared_ptr class CPipe
	*
	* @param $pipes direcci�n de memoria de la lista de shared_ptr sobre la que iterar.
	* @param $sectors direcci�n de memoria de la lista de shared_ptr sobre la que iterar
	*
	*/


	sql::ResultSet *res = NULL;
	sql::Statement *p_stmt = NULL;
	bool result = false;

	std::ostringstream os;
	os << "SELECT *  FROM connection;" << std::endl;
	try
	{
		if (m_p_con != NULL)
		{
			std::string query;
			query = os.str();
			std::cout << query << std::endl;
			p_stmt = m_p_con->createStatement();
			res = p_stmt->executeQuery(query);

			while (res->next())
			{

				pipes.push_back(std::make_shared<CPipe>(res->getInt64("ID_PIPE"), getSectorById(res->getInt64("ID_SECTOR_IN"), sectors), getSectorById(res->getInt64("ID_SECTOR_OUT"), sectors)));
				// Print ID string
				_log.println(boost::log::trivial::info, "PIPE ID: " + std::to_string(res->getInt64("ID_PIPE")));
				// 				// list_cvalues.push_back(CValue(res->getDouble("Value"), res->getInt64("udate")));
				// 				pipes.push_back(CPipe(res->getInt64("ID")));
				result = true;
			}

			delete res;
			delete p_stmt;
			p_stmt = NULL;
		}
	}
	catch (sql::SQLException &e)
	{
		if (res != NULL)
			delete res;
		if (p_stmt != NULL)
			delete p_stmt;
		std::ostringstream os;
		os << "ERROR:" << e.what();
		_log.println(boost::log::trivial::error, os.str());
		return false;
	}
	return result;
}

bool CDatabaseBanana::getPipeActuators(std::list<std::shared_ptr<CActuator>> actuator_vector, std::shared_ptr<CPipe> pipe)
{
	/*
	* get information of every PIPE ACTUATOR from a single PIPE:
	*
	* This function submits a query to the database to get the parameters of the table PIPE_ACTUATOR
	* Iterates that table and stores each row as an actuator in the vector actuator_vector.
	* Stores the data on a shared_ptr class CActuator
	*
	* @param actuator_vector memory address of the pointer list through which to iterate
	* @param pipe Pointer to the associated Pipe where all of these actuators are present 
	*
	*/


	sql::ResultSet *res = NULL;
	sql::Statement *p_stmt = NULL;
	bool result = false;

	std::ostringstream os;
	os << "SELECT * FROM ACTUATOR_PIPE, ACTUATOR_TYPE, PIPE_ACT_LOC "
	   << "WHERE ACTUATOR_PIPE.ID_TYPE = ACTUATOR_TYPE.ID_TYPE AND ACTUATOR_PIPE.ID_ACTUATOR = PIPE_ACT_LOC.ID_ACTUATOR"
	   << " AND PIPE_ACT_LOC.ID_PIPE = " << pipe.get()->getId() << ";"
	   << std::endl;

	try
	{
		if (m_p_con != NULL)
		{
			std::string query;
			query = os.str();
			std::cout << query << std::endl;
			p_stmt = m_p_con->createStatement();
			res = p_stmt->executeQuery(query);

			_log.println(boost::log::trivial::info, "Pipe ID: " + std::to_string(pipe.get()->getId()));

			while (res->next())
			{
				CActType type((bool)res->getInt64("IS_SWITCH"), res->getInt64("ID_TYPE"), res->getString("DESCRIPTION"), res->getString("LOCATION"));
				std::shared_ptr<CActuator> actuator = std::make_shared<CActuator>(res->getInt64("ID_ACTUATOR"), type);

				std::list<std::shared_ptr<CValue>> values;
				time_t to = time(0);
				time_t from = to - 12 * 30 * 24 * 3600;
				getValuesActuator(values, res->getInt64("ID_ACTUATOR"), "PIPE", from, to);
				actuator->addValue(values);

				actuator_vector.push_back(actuator);
				pipe.get()->addActuator(actuator);
				_log.println(boost::log::trivial::info, "Actuator ID: " + std::to_string(res->getInt64("ID_ACTUATOR")) + ", Actuator TYPE: " + res->getString("DESCRIPTION") + "/n");
				result = true;
			}

			delete res;
			delete p_stmt;
			p_stmt = NULL;
		}
	}
	catch (sql::SQLException &e)
	{
		if (res != NULL)
			delete res;
		if (p_stmt != NULL)
			delete p_stmt;
		std::ostringstream os;
		os << "ERROR:" << e.what();
		_log.println(boost::log::trivial::error, os.str());
		return false;
	}
	return result;
}

bool CDatabaseBanana::getSectorActuators(std::list<std::shared_ptr<CActuator>> & actuator_vector, std::shared_ptr<CSector> & sector)
{
	/*
	* get information of every SECTOR ACTUATOR from a single SECTOR:
	*
	* This function submits a query to the database to get the parameters of the table SECTOR_ACTUATOR
	* Iterates that table and stores each row as an actuator in the vector actuator_vector.
	* Stores the data on a shared_ptr class CActuator
	*
	* @param actuator_vector memory address of the pointer list through which to iterate
	* @param sector Pointer to the associated Sector where all of these actuators are present
	*
	*/


	sql::ResultSet *res = NULL;
	sql::Statement *p_stmt = NULL;
	bool result = false;

	std::ostringstream os;
	os << "SELECT * FROM ACTUATOR_SECTOR, ACTUATOR_TYPE, SECT_ACT_LOC "
	   << "WHERE ACTUATOR_SECTOR.ID_TYPE = ACTUATOR_TYPE.ID_TYPE AND ACTUATOR_SECTOR.ID_ACTUATOR = SECT_ACT_LOC.ID_ACTUATOR"
	   << " AND SECT_ACT_LOC.ID_SECTOR = " << sector.get()->get_id() << ";"
	   << std::endl;
	
	try
	{
		if (m_p_con != NULL)
		{
			std::string query;
			query = os.str();
			std::cout << query << std::endl;
			p_stmt = m_p_con->createStatement();
			res = p_stmt->executeQuery(query);

			_log.println(boost::log::trivial::info, "Sector ID: " + std::to_string(sector.get()->get_id()));

			while (res->next())
			{
				CActType type((bool)res->getInt64("IS_SWITCH"), res->getInt64("ID_TYPE"), res->getString("DESCRIPTION"), res->getString("LOCATION"));
				std::shared_ptr<CActuator> actuator = std::make_shared<CActuator>(res->getInt64("ID_ACTUATOR"), type);
				
				std::list<std::shared_ptr<CValue>> values;
				time_t to = time(0);
				time_t from = to - 12 * 30 * 24 * 3600;
				//getValuesActuator(values, res->getInt64("ID_ACTUATOR"), "SECTOR", from, to);
				//actuator->addValue(values);
				
				actuator_vector.push_back(actuator);
				sector.get()->addActuator(actuator);
				//_log.println(boost::log::trivial::info, "Actuator ID: " + std::to_string(res->getInt64("ID_ACTUATOR")) + ", Actuator TYPE: " + res->getString("DESCRIPTION") + "/n");
				result = true;
			}

			delete res;
			delete p_stmt;
			p_stmt = NULL;
		}
	}
	catch (sql::SQLException &e)
	{
		if (res != NULL)
			delete res;
		if (p_stmt != NULL)
			delete p_stmt;
		std::ostringstream os;
		os << "ERROR:" << e.what();
		_log.println(boost::log::trivial::error, os.str());
		return false;
	}
	return result;
}

bool CDatabaseBanana::getPipeSensors(std::list<std::shared_ptr<CSensor>> & sensor_vector, std::shared_ptr<CPipe> & pipe) {
	
	/*
	* get information of every PIPE SENSORS from a single PIPE:
	*
	* This function submits a query to the database to get the parameters of the table PIPE_SENSOR
	* Iterates that table and stores each row as an actuator in the vector sensor_vector.
	* Stores the data on a shared_ptr class CSensor
	*
	* @param sensor_vector memory address of the pointer list through which to iterate
	* @param pipe Pointer to the associated Pipe where all of these sensors are present
	*
	*/
	
	
	
	// SELECT * FROM SENSOR_pipe,pipe_SENS_LOC, SENSOR_TYPE WHERE SENSOR_pipe.ID_SENSOR= pipe_SENS_LOC.ID_SENSOR AND SENSOR_pipe.ID_SENSOR_TYPE = SENSOR_TYPE.ID_SENSOR_TYPE AND pipe_SENS_LOC.ID_pipe =1;
	sql::ResultSet* res = NULL;
	sql::Statement* p_stmt = NULL;
	bool result = false;

	std::ostringstream os;
	os << "SELECT * FROM SENSOR_pipe,pipe_SENS_LOC, SENSOR_TYPE "
		<< "WHERE SENSOR_pipe.ID_SENSOR= pipe_SENS_LOC.ID_SENSOR AND SENSOR_pipe.ID_SENSOR_TYPE = SENSOR_TYPE.ID_SENSOR_TYPE "
		<< "AND pipe_SENS_LOC.ID_pipe = " << pipe.get()->getId() << ";"
		<< std::endl;

	try
	{
		if (m_p_con != NULL)
		{
			std::string query;
			query = os.str();
			std::cout << query << std::endl;
			p_stmt = m_p_con->createStatement();
			res = p_stmt->executeQuery(query);

			_log.println(boost::log::trivial::info, "Pipe ID: " + std::to_string(pipe.get()->getId()));

			while (res->next())
			{
				SensorType type((unsigned int)res->getInt64("ID_SENSOR_TYPE"), (std::string)res->getString("SENSOR_DESCRIPTION"), (std::string)res->getString("UNIT"), 0);
				std::shared_ptr<CSensor> sensor = std::make_shared<CSensor>(res->getInt64("ID_SENSOR"), type);

				std::list<std::shared_ptr<CValue>> values;
				time_t to = time(0);
				time_t from = to - 12 * 30 * 24 * 3600;
				getValuesSensor(values, res->getInt64("ID_SENSOR"), "PIPE", from, to);

				sensor->addValue(values);
				sensor_vector.push_back(sensor);
				pipe.get()->addSensor(sensor);
				/*_log.println(boost::log::trivial::info, "Actuator ID: " + std::to_string(res->getInt64("ID_SENSOR")) + ", Actuator TYPE: " + res->getString("DESCRIPTION") + "/n");*/
				result = true;
			}

			delete res;
			delete p_stmt;
			p_stmt = NULL;
		}
	}
	catch (sql::SQLException& e)
	{
		if (res != NULL)
			delete res;
		if (p_stmt != NULL)
			delete p_stmt;
		std::ostringstream os;
		os << "ERROR:" << e.what();
		_log.println(boost::log::trivial::error, os.str());
		return false;
	}
	return result;
}

bool CDatabaseBanana::getSectorSensors(std::list<std::shared_ptr<CSensor>> & sensor_vector, std::shared_ptr<CSector>& sector) {
	
	/*
	* get information of every SECTOR SENSORS from a single SECTOR:
	*
	* This function submits a query to the database to get the parameters of the table SECTOR_SENSOR
	* Iterates that table and stores each row as a sensor in the vector sensor_vector.
	* Stores the data on a shared_ptr class CSensor
	*
	* @param sensor_vector memory address of the pointer list through which to iterate
	* @param sector Sector to the associated Pipe where all of these sensors are present
	*
	*/
	
	//SELECT * FROM SENSOR_SECTOR,SECT_SENS_LOC, SENSOR_TYPE WHERE SENSOR_SECTOR.ID_SENSOR= SECT_SENS_LOC.ID_SENSOR AND SENSOR_SECTOR.ID_SENSOR_TYPE = SENSOR_TYPE.ID_SENSOR_TYPE AND SECT_SENS_LOC.ID_SECTOR =1;
	sql::ResultSet* res = NULL;
	sql::Statement* p_stmt = NULL;
	bool result = false;

	std::ostringstream os;
	os << "SELECT * FROM SENSOR_SECTOR,SECT_SENS_LOC, SENSOR_TYPE "
		<< "WHERE SENSOR_SECTOR.ID_SENSOR= SECT_SENS_LOC.ID_SENSOR AND SENSOR_SECTOR.ID_SENSOR_TYPE = SENSOR_TYPE.ID_SENSOR_TYPE "
		<< " AND SECT_SENS_LOC.ID_SECTOR  = " << sector.get()->get_id() << ";"
		<< std::endl;

	try
	{
		if (m_p_con != NULL)
		{
			std::string query;
			query = os.str();
			std::cout << query << std::endl;
			p_stmt = m_p_con->createStatement();
			res = p_stmt->executeQuery(query);

			_log.println(boost::log::trivial::info, "Sector ID: " + std::to_string(sector.get()->get_id()));

			while (res->next())
			{
				SensorType type((unsigned int)res->getInt64("ID_SENSOR_TYPE"), (std::string) res->getString("SENSOR_DESCRIPTION"), (std::string) res->getString("UNIT"), 0);
				std::shared_ptr<CSensor> sensor = std::make_shared<CSensor>(res->getInt64("ID_SENSOR"), type);
				
				std::list<std::shared_ptr<CValue>> values;
				time_t to = time(0);
				time_t from = to - 12 * 30 * 24 * 3600;
				getValuesSensor(values, res->getInt64("ID_SENSOR"), "SECTOR", from, to);
				sensor->addValue(values);

				sensor_vector.push_back(sensor);
				sector.get()->addSensor(sensor);
				/*_log.println(boost::log::trivial::info, "Actuator ID: " + std::to_string(res->getInt64("ID_SENSOR")) + ", Actuator TYPE: " + res->getString("DESCRIPTION") + "/n");*/
				result = true;
			}

			delete res;
			delete p_stmt;
			p_stmt = NULL;
		}
	}
	catch (sql::SQLException& e)
	{
		if (res != NULL)
			delete res;
		if (p_stmt != NULL)
			delete p_stmt;
		std::ostringstream os;
		os << "ERROR:" << e.what();
		_log.println(boost::log::trivial::error, os.str());
		return false;
	}
	return result;
}

bool CDatabaseBanana::getValuesActuator(std::list<std::shared_ptr<CValue>>& vector, uint16_t ActID, std::string location, time_t from, time_t to)
{
	/*
	* getter for the Values in an actuator.
	* 
	* extracts all the values from an actuator with the conditions established in the arguments of the function.
	* 
	* @args vector: Shared pointer vector which stores the set of data
	* @args ActID: Id of the actuator which data we want
	* @args location: String with the description of the location as stored in the database to facilitate where to look for the data and the object
	* @args from, to: time_t variables storing the time period to extract
	*
	*/


	sql::ResultSet* res = NULL;
	sql::Statement* p_stmt = NULL;
	bool result = false;

	std::ostringstream os;
	os << "SELECT VALUE, UNIX_TIMESTAMP(TIMESTAMP) AS DATE FROM VALUE_" << location << "_ACTUATOR" <<
		" WHERE ID_ACTUATOR = " << ActID << " AND TIMESTAMP BETWEEN FROM_UNIXTIME(" << from << ") AND FROM_UNIXTIME(" << to
		<< ") ORDER BY TIMESTAMP; "
		<< std::endl;

	try
	{
		if (m_p_con != NULL)
		{
			std::string query;
			query = os.str();
			std::cout << query << std::endl;
			p_stmt = m_p_con->createStatement();
			res = p_stmt->executeQuery(query);

			while (res->next())
			{
				std::shared_ptr<CValue> value = std::make_shared<CValue>(res->getInt64("VALUE"), res->getInt64("DATE"));
				vector.push_back(value);

				result = true;

			}

			delete res;
			delete p_stmt;
			p_stmt = NULL;
		}
	}
	catch (sql::SQLException& e)
	{
		if (res != NULL)
			delete res;
		if (p_stmt != NULL)
			delete p_stmt;
		std::ostringstream os;
		os << "ERROR:" << e.what();
		_log.println(boost::log::trivial::error, os.str());
		return false;
	}
	return result;
}

bool CDatabaseBanana::getValuesSensor(std::list<std::shared_ptr<CValue>>& vector, uint16_t ActID, std::string location, time_t from, time_t to)
{
	/*
	* getter for the Values in a sensor.
	*
	* extracts all the values from a sensor with the conditions established in the arguments of the function.
	*
	* @args vector: Shared pointer vector which stores the set of data
	* @args ActID: Id of the sensor which data we want
	* @args location: String with the description of the location as stored in the database to facilitate where to look for the data and the object
	* @args from, to: time_t variables storing the time period to extract
	*
	*/


	sql::ResultSet* res = NULL;
	sql::Statement* p_stmt = NULL;
	bool result = false;

	std::ostringstream os;
	os << "SELECT VALUE, UNIX_TIMESTAMP(TIMESTAMP) AS DATE FROM VALUE_" << location << "_SENSOR" <<
		" WHERE ID_SENSOR = " << ActID << " AND TIMESTAMP BETWEEN FROM_UNIXTIME(" << from << ") AND FROM_UNIXTIME(" << to
		<< ") ORDER BY TIMESTAMP; "
		<< std::endl;

	try
	{
		if (m_p_con != NULL)
		{
			std::string query;
			query = os.str();
			std::cout << query << std::endl;
			p_stmt = m_p_con->createStatement();
			res = p_stmt->executeQuery(query);

			while (res->next())
			{
				std::shared_ptr<CValue> value = std::make_shared<CValue>(res->getInt64("VALUE"), res->getInt64("DATE"));
				vector.push_back(value);

				result = true;

			}

			delete res;
			delete p_stmt;
			p_stmt = NULL;
		}
	}
	catch (sql::SQLException& e)
	{
		if (res != NULL)
			delete res;
		if (p_stmt != NULL)
			delete p_stmt;
		std::ostringstream os;
		os << "ERROR:" << e.what();
		_log.println(boost::log::trivial::error, os.str());
		return false;
	}
	return result;
}
	


bool CDatabaseBanana::setActuator(double state, CActuator * act, time_t t)
{

	/*
	* inserts a new value on an actuator.
	* 
	* sends a query which varies depending on the location of the actuator
	* 
	* @arg state: new value to update
	* @arg act: CActuator class object to modify
	*
	*/

	bool error = 0;
	try{
		//This condition checks that there is a connection active
		if (m_p_con != NULL) {
			std::string query;
			std::string querysector("INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (");
			std::string querypipe("INSERT INTO value_pipe_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (");
			query = act->m_getType().getLoc() == "PIPE" ? querypipe : querysector;
			std::ostringstream os;
			os << act->getId() << ", FROM_UNIXTIME("<< t <<") ," << state << ");";
			query += os.str();
			_log.println(boost::log::trivial::info,  query);
			bool result = EjecutaQuery(query);
			return result;
		}
		else {
			error = 1;
		}
	}
		catch (sql::SQLException& e) {
		std::ostringstream os; os << "ERROR:" << e.what(); _log.println(boost::log::trivial::error, os.str());
		error = 1;
	}
		if (error) return 0;
		std::shared_ptr<CValue> value = std::make_shared<CValue>((double)state, time(0));
		act->addValue(value);

		
	return 1;
}
