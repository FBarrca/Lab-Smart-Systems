#include "CDatabase4.h"
#include <iostream>
#include <time.h>
#include "CValue.h"
CDatabaseMIC::CDatabaseMIC()
{
}

CDatabaseMIC::~CDatabaseMIC()
{
}

int CDatabaseMIC::insertValue(const uint64_t& IdVariable, const CValue& CValue, const bool useAutoIncrement)
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

bool CDatabaseMIC::updateValue(const int32_t& IdVariable, const CValue& CValue)
{
	return false;
}

bool CDatabaseMIC::deleteValue(const int32_t& IdVariable, const CValue& CValue)
{
	return false;
}
