#pragma once
#include <vector>
#include "CValue.h"

class CMeasurement
{
public:
	CMeasurement(std::vector<CValue> values, CMeasType mt) : m_values(values), m_type(mt), m_ts(0){};
	~CMeasurement();

private:
	time_t m_ts;
	CMeasType m_type;
	std::vector<CValue> m_values; // vector of values
};
