#include "CDatabaseBanana.h"
#include <iostream>
#include <time.h>
#include "CValue.h"
#include "CSector.h"
#include "CEstate.h"
#include "CPipe.h"
#include "../helpers/CTimeUtils.hpp"
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
		// if (m_p_con != NULL)
		if (true) // Hardcode
		{
			std::string query;
			query = os.str();
			std::cout << query << std::endl;
			p_stmt = m_p_con->createStatement();
			res = p_stmt->executeQuery(query);

			while (res->next())
			{

				// list_cvalues.push_back(CValue(res->getDouble("Value"), res->getInt64("udate")));
				// sectors.push_back(CSector(res->getInt64("ID"), CEstate(res->getint64('LON'), CEstate(res->getint64('LAT')), res->getFloat("H20"))); // si no funciona usar getDouble

				// Add a share pointer of a sector to the list
				CEstate estate = CEstate(res->getDouble("LON"), res->getDouble("LAT"));

				sectors.push_back(std::make_shared<CSector>(res->getInt64("ID"), estate, res->getDouble("H20")));
				// Print ID string
				
				_log.println(boost::log::trivial::error, "Sector ID: " + std::to_string(res->getInt64("ID")));
				// sectors.push_back(std::shared_ptr<CSector>(new CSector(res->getInt64("ID"), CEstate(res->getDouble("LON"), res->getDouble("LAT"), res->getDouble("H20")))));

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

// bool CDatabaseBanana::getPipes(std::vector<boost::shared_ptr<CPipe>>& pipes) {

// 	sql::ResultSet* res = NULL; sql::Statement* p_stmt = NULL;
// 	bool result = false;

// 	std::ostringstream os;
// 	os << "SELECT ID_PIPE AS ID FROM PIPES;" << endl;// << prosumer_id;
// 	try {
// 		if (m_p_con != NULL) {
// 			std::string query;
// 			query = os.str();
// 			std::cout << query << std::endl;
// 			p_stmt = m_p_con->createStatement();
// 			res = p_stmt->executeQuery(query);

// 			while (res->next()) {

// 				// list_cvalues.push_back(CValue(res->getDouble("Value"), res->getInt64("udate")));
// 				pipes.push_back(CPipe(res->getInt64("ID")));
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

// CDatabaseBanana::getSectorPressure(const CSector& sector, time_t from_fecha, time_t to_fecha, std::list<CValues*>& pressure_list)
// {
// 	sql::ResultSet* res = NULL; sql::Statement* p_stmt = NULL;
// 	bool result = false;
// 	helpers::CTimeUtils timeHelper;
// 	int year;
// 	int month;
// 	int day;
// 	int hour;
// 	int min;
// 	int sec;
// 	time_t date;

// 	std::ostringstream os;
// 	os << "SELECT * FROM VALUE_SECTOR_SENSOR WHERE ID_MEASUREMENT_TYPE = " << 2 <<"AND TIMESTAMP > FROM_UNIXTIME( "<< from_fecha << ") AND TIMESTAMP < FROM_UNIXTIME( "<< to_fecha << ");";
// 	try {
// 		if (m_p_con != NULL) {
// 			std::string query;
// 			query = os.str();
// 			std::cout << query << std::endl;
// 			p_stmt = m_p_con->createStatement();
// 			res = p_stmt->executeQuery(query);

// 			while (res->next()) {

// 				// list_cvalues.push_back(CValue(res->getDouble("Value"), res->getInt64("udate")));
// 				// sectors.push_back(CSector(res->getInt64("ID"), CEstate(res->getint64('LON'), CEstate(res->getint64('LAT')), res->getFloat("H20"))); // si no funciona usar getDouble
// 				year = stoi(str_date.substr(0, 4));
// 				month = stoi(str_date.substr(5, 2));
// 				day = stoi(str_date.substr(8, 2));
// 				hour = stoi(str_date.substr(11, 2));
// 				min = stoi(str_date.substr(14, 2));
// 				sec = stoi(str_date.substr(17, 2));
// 				date = timeHelper.getTimeTFromYMDHMS(const int& year, const int& month, const int& day, const int& hour, const int& min, const int& sec);
// 				pressure_list.push_back(CValue(res->getDouble("VALUE"), date);
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