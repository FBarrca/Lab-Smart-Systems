#include "CDatabase4.h"
#include <iostream>
#include <time.h>
#include "CValue.h"
#include "src/helpers/CTimeUtils.hpp"""
CDatabaseMIC::CDatabaseMIC()
{
}

CDatabaseMIC::~CDatabaseMIC()
{
}

int CDatabaseMIC::insertValue(const uint64_t& IdVariable, const CValue& CValue)
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

bool CDatabaseMIC::getValues(const int32_t& IdVariable, std::vector<CValue>& list_cvalues)
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

bool CDatabaseMIC::updateValue(const int32_t& IdVariable, const CValue& value)
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

bool CDatabaseMIC::deleteValue(const int32_t& IdVariable, const CValue& CValue)
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
