#pragma once
#include <vector>
#include "bananas/CValue.h"
#include "CSenseType.h"
#include <ctime>
class CMeasurement
{
public:
	CMeasurement(std::vector<CValue> values, CSenseType st) : m_values(values), m_type(st), m_ts(time(0)) {};
	//CMeasurement();
	~CMeasurement();
	std::vector<CValue> m_getValues() { return m_values; };

private:
	time_t m_ts;
	CSenseType m_type;
	std::vector<CValue> m_values; // vector of values
};
