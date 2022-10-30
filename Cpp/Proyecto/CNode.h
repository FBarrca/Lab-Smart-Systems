#pragma once

#include <vector>
#include <boost/smart_ptr/shared_ptr.hpp>

#include "CEstate.h"
#include "CPipe.h"
class CNode
{

public:
	CNode(CEstate e, unsigned int wd) : m_Estate(e), m_WaterDemand(wd){};
	bool addSensor(boost::shared_ptr<CSensor> s)
	{
		if (s->getLoc() == 1) // if sensor is a node sensor
		{
			m_Sensors.push_back(s);
			return true;
		}
		else
			return false;
	};
	bool addActuator(boost::shared_ptr<CActuator> a)
	{
		if (a->getLoc() == 1) // if actuator is a node actuator
		{
			m_Actuators.push_back(a);
			return true;
		}
		else
			return false;
	};
	void addPipe(boost::shared_ptr<CPipe> p) { m_Pipes.push_back(p); };
	~CNode();

private:
	CEstate m_Estate;
	unsigned int m_WaterDemand;

	std::vector<boost::shared_ptr<CPipe>> Pipes;		 // Pipes that arrive to that node
	std::vector<boost::shared_ptr<CSensor>> Sensors;	 // Sensor at the node
	std::vector<boost::shared_ptr<CActuator>> Actuators; // Sensor at the node
};
