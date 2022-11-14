#pragma once
#include <vector>
#include "CValue.h"
//#include "CSenseType.h"
#include <ctime>
class CMeasurement
{
public:
	//CMeasurement(std::vector<CValue> values, CSenseType st) : m_values(values), m_type(st), m_ts(time(0)) {};
	CMeasurement(std::vector<CValue> values) : m_values(values), m_ts(time(0)) {};
	CMeasurement();
	~CMeasurement();
	std::vector<CValue> m_getValues() { return m_values; };

	//getters and setters
	time_t getTimestamp() const;
	//CSenseType getSenseType() const;
	void getValues(std::vector<CValue>& values) const;

private:
	time_t m_ts;
	//CSenseType m_type;
	std::vector<CValue> m_values; // vector of values
};