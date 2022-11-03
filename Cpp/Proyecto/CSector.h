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
	//std::vector<boost::shared_ptr<CPipe>> m_Pipes;		 // Pipes that arrive to that node
	std::vector<boost::shared_ptr<CSensor>> m_Sensors;	 // Sensor at the node
	std::vector<boost::shared_ptr<CActuator>> m_Actuators; // Sensor at the node
};

