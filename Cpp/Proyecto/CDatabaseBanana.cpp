#include "CDatabaseBanana.h"
#include <iostream>
#include <time.h>
#include "CValue.h"
#include "CSector.h"
#include "CEstate.h"
#include "CPipes.h"
#include "src/helpers/CTimeUtils.hpp"""
CDatabaseBanana::CDatabaseBanana()
{
}

CDatabaseBanana::~CDatabaseBanana()
{
}

int CDatabaseBanana::insertValue(const uint64_t& IdVariable, const CValue& CValue)
{
	try {
		//This condition checks that there is a connection active
		if (m_p_con != NULL) {
			std::string query("INSERT INTO VARIABLE_VALUES (ID_VARIABLE, VALUE, INFO_DATE)  VALUES (");
			std::ostringstream os;

			os << IdVariable << "," << static_cast<int32_t> (CValue.getValue()) << ", FROM_UNIXTIME(" << CValue.getDate() << ", '%Y-%m-%d %H:%i:%s' ))";
			query += os.str();
			std::cout << query;
			bool result = EjecutaQuery(query);

			//int id = GetID("SELECT MAX(ID_PREDICTION) FROM VARIABLE_VALUES");
			//if (result) return id;
			return 1;
		}
		else {
			return 0;
		}
	}
	catch (sql::SQLException& e) {
		std::ostringstream os; os << "ERROR:" << e.what(); _log.println(boost::log::trivial::error, os.str());
		return 0;
	}
	return 0;
}

bool CDatabaseBanana::getValues(const int32_t& IdVariable, std::vector<CValue>& list_cvalues)
{
	sql::ResultSet* res = NULL; sql::Statement* p_stmt = NULL;
	bool result = false;

	std::ostringstream os;
	os << "SELECT Value ,UNIX_TIMESTAMP(INFO_DATE) as udate FROM variable_Values WHERE id_variable = "<< IdVariable;// << prosumer_id;
	try {
		if (m_p_con != NULL) {
			std::string query;
			query = os.str();
			std::cout << query << std::endl;
			p_stmt = m_p_con->createStatement();
			res = p_stmt->executeQuery(query);

			
			while (res->next()) {
				//This loop goes thorugh the rows of the response one by one getting the value of the column with the label returned in the query
				//Bear in mind you can access elements too by the index of the column (below both options)
				//mpan = res->getString("VALUE");
				//std::cout << res->getInt64("udate") << std::endl;
				list_cvalues.push_back(CValue(res->getDouble("Value"), res->getInt64("udate")));
				//mpan = res->getString(0 + INDEX_OFFSET_IN_RESULT_SETS);
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

bool CDatabaseBanana::updateValue(const int32_t& IdVariable, const CValue& value)
{
	std::vector<CValue> vCValue;
	std::vector <CValue> ::iterator it;
	
	if (!this->getValues(IdVariable,vCValue)) {
		std::cout << "cant get values" << std::endl;
		return false;
	}
	CValue findResult;
	if (!findCValueOnVectorByDate(vCValue, findResult, value.getDate()))
		std::cout << "UPDATE: We looked for value of that id on that time but found no data" << std::endl;
	else
		std::cout << "UPDATE: Found inserted data at that time" << std::endl;

	sql::ResultSet* res = NULL; sql::Statement* p_stmt = NULL;
	helpers::CTimeUtils ctu;
	std::ostringstream os;
	os << " UPDATE variable_values SET VALUE = " << value.getValue() << " WHERE(ID_VARIABLE = " << IdVariable << " AND INFO_DATE = FROM_UNIXTIME(" <<  value.getDate() << "));";
	std::string query;
	query = os.str();
	std::cout << query << std::endl;
	try {
		if (!EjecutaQuery(query)) return false;
	}
	catch (sql::SQLException& e) {
		std::ostringstream os; os << "ERROR:" << e.what(); _log.println(boost::log::trivial::error, os.str());
		return false;
	}
	return true;
}

bool CDatabaseBanana::deleteValue(const int32_t& IdVariable, const CValue& CValue)
{
	sql::ResultSet* res = NULL; sql::Statement* p_stmt = NULL;
	helpers::CTimeUtils ctu;
	std::ostringstream os;
	os << " DELETE FROM variable_values WHERE id_variable = " << IdVariable << " AND info_date  = FROM_UNIXTIME( " << CValue.getDate() << ");";
	std::string query;
	query = os.str();
	std::cout << query << std::endl;
	try {
		if (!EjecutaQuery(query)) return false;
	}
	catch (sql::SQLException& e) {
		std::ostringstream os; os << "ERROR:" << e.what(); _log.println(boost::log::trivial::error, os.str());
		return false;
	}
	return true;
}

bool findCValueOnVectorByDate(std::vector<CValue>& vCValue, CValue & findValue, time_t date) {
	std::vector<CValue> ::iterator it;
	for (it = vCValue.begin(); it != vCValue.end(); it++)
		if (it->getDate() == date) {
			findValue = *it;
			return 1;
		}
	return 0;
}

bool findCValueOnVector(std::vector<CValue>& vCValue,const CValue& findValue)
{
	std::vector<CValue> ::iterator it;
	for (it = vCValue.begin(); it != vCValue.end(); it++)
		if (it->getDate() == findValue.getDate() && it->getValue() == findValue.getValue()) {
			return true;
		}
	return false;
}







/*
* 
* ---------------------------------------------- BANANA QUERIES
* 
*/

bool CDatabaseBanana::getSectors(std::vector<boost::shared_ptr<CSector>>& sectors) {
	
	sql::ResultSet* res = NULL; sql::Statement* p_stmt = NULL;
	bool result = false;

	std::ostringstream os;
	os << "SELECT ID_SECTOR AS ID, LON, LAT, WATER_DEMAND AS H20 FROM SECTOR;" << endl;// << prosumer_id;
	try {
		if (m_p_con != NULL) {
			std::string query;
			query = os.str();
			std::cout << query << std::endl;
			p_stmt = m_p_con->createStatement();
			res = p_stmt->executeQuery(query);


			while (res->next()) {
				
				// list_cvalues.push_back(CValue(res->getDouble("Value"), res->getInt64("udate")));
				sectors.push_back(CSector(res->getInt64("ID"), CEstate(res->getint64('LON'), CEstate(res->getint64('LAT')), res->getFloat("H20"))); // si no funciona usar getDouble
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



bool CDatabaseBanana::getPipes(std::vector<boost::shared_ptr<CPipe>>& pipes) {
	
	sql::ResultSet* res = NULL; sql::Statement* p_stmt = NULL;
	bool result = false;

	std::ostringstream os;
	os << "SELECT ID_PIPE AS ID FROM PIPES;" << endl;// << prosumer_id;
	try {
		if (m_p_con != NULL) {
			std::string query;
			query = os.str();
			std::cout << query << std::endl;
			p_stmt = m_p_con->createStatement();
			res = p_stmt->executeQuery(query);


			while (res->next()) {

				// list_cvalues.push_back(CValue(res->getDouble("Value"), res->getInt64("udate")));
				pipes.push_back(CPipe(res->getInt64("ID")));
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



bool getConnections(std::vector<boost::shared_ptr<CSector>>& sectors, std::vector<boost::shared_ptr<CPipe>>& pipes, std::vector<boost::shared_ptr<CConnection>>& connection s) {
		
	sql::ResultSet* res = NULL; sql::Statement* p_stmt = NULL;
	bool result = false;

	std::ostringstream os;
	os << "SELECT ID_PIPE AS ID, ID_SECTOR_IN AS IN, ID_SECTOR_OUT AS OUT FROM CONNECTION;" << endl;// << prosumer_id;
	try {
		if (m_p_con != NULL) {
			std::string query;
			query = os.str();
			std::cout << query << std::endl;
			p_stmt = m_p_con->createStatement();
			res = p_stmt->executeQuery(query);


			while (res->next()) {

				// list_cvalues.push_back(CValue(res->getDouble("Value"), res->getInt64("udate")));
				
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


/*
getSectors. Donde haces la petición a la base de datos de todos los sectores que hay
( solo hace falta lo básico nada de coger los actuadores ni sensores ni nada)
y los añada a una lista de punteros o mejor shared_ptr que le has pasado a 
la función por referencia.
*/


bool CDatabaseBanana::getSectors(std::vector<boost::shared_ptr<CSector>>& sectors)
{
	sql::ResultSet* res = NULL; sql::Statement* p_stmt = NULL;
	bool result = false;
	helpers::CTimeUtils timeUtil;
	string str_date;
	int year;
	int month;
	int day;
	int hour;
	int min;
	int sec;
	time_t date;

	std::ostringstream os;
	os << "SELECT * FROM sectors";

	try {
		if (m_p_con != NULL) {
			std::string query;
			query = os.str();
			p_stmt = m_p_con->createStatement();
			res = p_stmt->executeQuery(query);

			while (res->next()) {
				/*str_date = res->getString("INFO_DATE");
				year = stoi(str_date.substr(0, 4));
				month = stoi(str_date.substr(5, 2));
				day = stoi(str_date.substr(8, 2));
				hour = stoi(str_date.substr(11, 2));
				min = stoi(str_date.substr(14, 2));
				sec = stoi(str_date.substr(17, 2));
				date = timeUtil.computeFech(year, month, day, hour, min, sec);
				CValue c1(res->getDouble("VALUE"), date);
				cv_list.push_back(c1);*/

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
