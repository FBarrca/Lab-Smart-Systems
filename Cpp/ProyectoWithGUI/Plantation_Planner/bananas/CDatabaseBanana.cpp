#include "CDatabaseBanana.h"
#include <iostream>
#include <time.h>
#include "CValue.h"
#include "CSector.h"
#include "CEstate.h"
#include "CPipe.h"
#include "../helpers/CTimeUtils.hpp"
#include "CSensor.h"
CDatabaseBanana::CDatabaseBanana()
{
}

CDatabaseBanana::~CDatabaseBanana()
{
}

// bool findCValueOnVectorByDate(std::vector<CValue> &vCValue, CValue &findValue, time_t date)
//{
//	std::vector<CValue>::iterator it;
//	for (it = vCValue.begin(); it != vCValue.end(); it++)
//		if (it->getDate() == date)
//		{
//			findValue = *it;
//			return 1;
//		}
//	return 0;
// }
//
// bool findCValueOnVector(std::vector<CValue> &vCValue, const CValue &findValue)
//{
//	std::vector<CValue>::iterator it;
//	for (it = vCValue.begin(); it != vCValue.end(); it++)
//		if (it->getDate() == findValue.getDate() && it->getValue() == findValue.getValue())
//		{
//			return true;
//		}
//	return false;
// }

/*
 *
 * ---------------------------------------------- BANANA QUERIES
 *
 */

bool CDatabaseBanana::getSectors(std::list<std::shared_ptr<CSector>> &sectors)
{

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

 bool CDatabaseBanana::getPipes(std::list<std::shared_ptr<CPipe>>& pipes, std::list<std::shared_ptr<CSector>>& sectors) {

 	sql::ResultSet* res = NULL; sql::Statement* p_stmt = NULL;
 	bool result = false;

 	std::ostringstream os;
 	os << "SELECT *  FROM connection;" << std::endl;
 	try {
 		if (m_p_con != NULL) {
 			std::string query;
 			query = os.str();
 			std::cout << query << std::endl;
 			p_stmt = m_p_con->createStatement();
 			res = p_stmt->executeQuery(query);

 			while (res->next()) {

				pipes.push_back(std::make_shared<CPipe>(res->getInt64("ID_PIPE"), getSectorById(res->getInt64("ID_SECTOR_IN"),sectors), getSectorById(res->getInt64("ID_SECTOR_OUT"), sectors)));
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
 	catch (sql::SQLException& e) {
 		if (res != NULL) delete res;
 		if (p_stmt != NULL) delete p_stmt;
 		std::ostringstream os; os << "ERROR:" << e.what(); _log.println(boost::log::trivial::error, os.str());
 		return false;
 	}
 	return result;

 }

// bool getConnections(std::vector<boost::shared_ptr<CSector>>& sectors, std::vector<boost::shared_ptr<CPipe>>& pipes, std::vector<boost::shared_ptr<CConnection>>& connection s) {

// 	sql::ResultSet* res = NULL; sql::Statement* p_stmt = NULL;
// 	bool result = false;

// 	std::ostringstream os;
// 	os << "SELECT ID_PIPE AS ID, ID_SECTOR_IN AS IN, ID_SECTOR_OUT AS OUT FROM CONNECTION;" << endl;// << prosumer_id;
// 	try {
// 		if (m_p_con != NULL) {
// 			std::string query;
// 			query = os.str();
// 			std::cout << query << std::endl;
// 			p_stmt = m_p_con->createStatement();
// 			res = p_stmt->executeQuery(query);

// 			unsigned int id, in, out;

// 			while (res->next()) {

// 				id = res->getInt64("ID");
// 				in = res->getInt64("IN");
// 				out = res->getInt64("OUT");

// 				for (i = 0; i < pipes.size(); i++) {
// 					pipes[i]->
// 				}
// 			}

// 			delete res;
// 			delete p_stmt;
// 			p_stmt = NULL;
// 		}
// 	}
// 	catch (sql::SQLException& e) {
// 		if (res != NULL) delete res;
// 		if (p_stmt != NULL) delete p_stmt;
// 		std::ostringstream os; os << "ERROR:" << e.what(); _log.println(boost::log::trivial::error, os.str());
// 		return false;
// 	}
// 	return result;

// }

// /*
// getSectors. Donde haces la petici�n a la base de datos de todos los sectores que hay
// ( solo hace falta lo b�sico nada de coger los actuadores ni sensores ni nada)
// y los a�ada a una lista de punteros o mejor shared_ptr que le has pasado a
// la funci�n por referencia.
// */

// bool CDatabaseBanana::getSectors(std::vector<boost::shared_ptr<CSector>>& sectors)
// {
// 	sql::ResultSet* res = NULL; sql::Statement* p_stmt = NULL;
// 	bool result = false;
// 	helpers::CTimeUtils timeUtil;
// 	string str_date;
// 	int year;
// 	int month;
// 	int day;
// 	int hour;
// 	int min;
// 	int sec;
// 	time_t date;

// 	std::ostringstream os;
// 	os << "SELECT * FROM sectors";

// 	try {
// 		if (m_p_con != NULL) {
// 			std::string query;
// 			query = os.str();
// 			p_stmt = m_p_con->createStatement();
// 			res = p_stmt->executeQuery(query);

// 			while (res->next()) {
// 				/*str_date = res->getString("INFO_DATE");
// 				year = stoi(str_date.substr(0, 4));
// 				month = stoi(str_date.substr(5, 2));
// 				day = stoi(str_date.substr(8, 2));
// 				hour = stoi(str_date.substr(11, 2));
// 				min = stoi(str_date.substr(14, 2));
// 				sec = stoi(str_date.substr(17, 2));
// 				date = timeUtil.computeFech(year, month, day, hour, min, sec);
// 				CValue c1(res->getDouble("VALUE"), date);
// 				cv_list.push_back(c1);*/

// 				result = true;
// 			}

// 			delete res;
// 			delete p_stmt;
// 			p_stmt = NULL;
// 		}
// 	}
// 	catch (sql::SQLException& e) {
// 		if (res != NULL) delete res;
// 		if (p_stmt != NULL) delete p_stmt;
// 		std::ostringstream os; os << "ERROR:" << e.what(); _log.println(boost::log::trivial::error, os.str());
// 		return false;
// 	}
// 	return result;

// }

bool CDatabaseBanana::getSectorPressure(const std::shared_ptr<CSector> sector, time_t from_fecha, time_t to_fecha)
{
	sql::ResultSet* res = NULL; sql::Statement* p_stmt = NULL;
	bool result = false;

	std::ostringstream os;
	os << "SELECT ss.ID_SENSOR, ssloc.ID_SECTOR, ss.ID_SENSOR_TYPE" <<
		" FROM sensor_sector as ss, sect_sens_loc as ssloc" <<
		" WHERE ss.ID_SENSOR = ssloc.ID_SENSOR;" <<
		" AND ssloc.ID_SECTOR = " << sector.get()->get_id() << " ;" << std::endl;

	try {
		if (m_p_con != NULL) {
			std::string query;
			query = os.str();
			std::cout << query << std::endl;
			p_stmt = m_p_con->createStatement();
			res = p_stmt->executeQuery(query);
			std::list<CSensor*> sensor_list_append;

			while (res->next()) {

				// list_cvalues.push_back(CValue(res->getDouble("Value"), res->getInt64("udate")));
				// sectors.push_back(CSector(res->getInt64("ID"), CEstate(res->getint64('LON'), CEstate(res->getint64('LAT')), res->getFloat("H20"))); // si no funciona usar getDouble
				//CValue pressure(res->getDouble("VALUE"), res->getInt64("udate"));
				CSensor sensor_obj;
				sensor_obj.setID(res->getInt64("ss.ID_SENSOR"));
				sensor_list_append.push_back(&sensor_obj);
				result = true;
			}

			sector.get()->appendSensors(sensor_list_append);

			delete res;
			delete p_stmt;
			p_stmt = NULL;
		}
	}
	catch (sql::SQLException& e) {
		if (res != NULL) delete res;
		if (p_stmt != NULL) delete p_stmt;
		std::ostringstream os; os << "ERROR:" << e.what(); _log.println(boost::log::trivial::error, os.str());
		return false;
	}

	//sql::ResultSet* res = NULL; sql::Statement* p_stmt = NULL;
	//bool result = false;

	//std::ostringstream os;
	//os << "SELECT vss.ID_SENSOR, UNIX_TIMESTAMP(TIMESTAMP) AS udate, vss.VALUE FROM value_sector_sensor as vss," <<
	//	" sensor_sector as ss," <<
	//	" sect_sens_loc as ssloc," <<
	//	" sector as s" <<
	//	" WHERE vss.ID_SENSOR IN" <<
	//	" (SELECT ID_SENSOR FROM sensor_sector as ss," <<
	//	" sensor_type as st" <<
	//	" WHERE ss.id_measurement_type = st.id_measurement_type" <<
	//	" AND ss.id_sensor_type = st.id_sensor_type" <<
	//	" AND ss.id_measurement_type = st.id_measurement_type" <<
	//	" AND st.ID_MEASUREMENT_TYPE = 3)" <<
	//	" AND UNIX_TIMESTAMP(TIMESTAMP) <" << to_fecha <<
	//	" AND UNIX_TIMESTAMP(TIMESTAMP) >" << from_fecha <<
	//	" AND vss.ID_SENSOR = ss.ID_SENSOR" <<
	//	" AND ss.ID_SENSOR = ssloc.ID_SENSOR" <<
	//	" AND ssloc.ID_SECTOR = s.ID_SECTOR" <<
	//	" AND s.ID_SECTOR = " << sector.get()->get_id() << ";" << std::endl;

	//try {
	//	if (m_p_con != NULL) {
	//		std::string query;
	//		query = os.str();
	//		std::cout << query << std::endl;
	//		p_stmt = m_p_con->createStatement();
	//		res = p_stmt->executeQuery(query);

	//		while (res->next()) {

	//			// list_cvalues.push_back(CValue(res->getDouble("Value"), res->getInt64("udate")));
	//			// sectors.push_back(CSector(res->getInt64("ID"), CEstate(res->getint64('LON'), CEstate(res->getint64('LAT')), res->getFloat("H20"))); // si no funciona usar getDouble
	//			CValue pressure(res->getDouble("VALUE"), res->getInt64("udate"));
	//			std::cout << pressure << std::endl;
	//			result = true;
	//		}

	//		delete res;
	//		delete p_stmt;
	//		p_stmt = NULL;
	//	}
	//}
	//catch (sql::SQLException& e) {
	//	if (res != NULL) delete res;
	//	if (p_stmt != NULL) delete p_stmt;
	//	std::ostringstream os; os << "ERROR:" << e.what(); _log.println(boost::log::trivial::error, os.str());
	//	return false;
	//}
	return result;

}
