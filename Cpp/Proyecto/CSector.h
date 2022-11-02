#pragma once
#include "CEstate.h"

class CSector
{
public:
	CSector();
	~CSector();
	CSector(unsigned int i, CEstate e, float w) : m_id(i), m_estate(e), m_water_demand(w) {};
private:
	unsigned int m_id;
	CEstate m_estate;
	float m_water_demand;
};
