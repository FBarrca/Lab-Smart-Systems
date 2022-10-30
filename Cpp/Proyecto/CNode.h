#pragma once

#include <vector>
#include <boost/smart_ptr/shared_ptr.hpp>

#include "CEstate.h"
#include "CPipe.h"
class CNode
{

public:
	CNode(CEstate e, unsigned int wd) : m_Estate(e), m_WaterDemand(wd) {};
	
private:
	CEstate m_Estate;
	unsigned int m_WaterDemand;

	std::vector<boost::shared_ptr<CPipe> > Pipes; // Pipes that arrive to that node

	std::vector<boost::shared_ptr<CSensor> > Sensors; // Sensor at the node

	std::vector<boost::shared_ptr<CActuator> > Actuators; // Sensor at the node

};

