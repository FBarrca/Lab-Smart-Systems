#include "CMeasurement.h"

CMeasurement::CMeasurement()
{
	std::vector<CValue> values;
	m_ts = time(0);
	m_values = values;
}

CMeasurement::~CMeasurement()
{
}

time_t CMeasurement::getTimestamp() const
{
	return m_ts;
}

//CSenseType CMeasurement::getSenseType() const
//{
//	return m_type;
//}

void CMeasurement::getValues(std::vector<CValue>& values) const
{

	auto it_m_values = m_values.begin();
	for (int i = 0; i < m_values.size(); i++, it_m_values++)
	{
		values.push_back(*it_m_values);
	}
}
