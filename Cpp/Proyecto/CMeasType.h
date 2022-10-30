#pragma once
#include <vector>
#include <string>

class CMeasType
{
public:
	CMeasType();
	CMeasType(std::string u, std::string d, unsigned int n) : m_unit(u), m_desc(d), m_NumberMeas(n){};
	~CMeasType();

protected:
	std::string m_unit;
	std::string m_desc;
	unsigned int m_NumberMeas; // to allow multiple values to be stored in a single measurement (of the same type)
};
