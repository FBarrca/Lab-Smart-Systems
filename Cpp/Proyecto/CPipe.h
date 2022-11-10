#pragma once

#include "CSector.h"
#include "CSensor.h"
#include "CActuator.h"
#include <vector>
#include <string>
#include <boost/variant.hpp>

class CPipe
{
public:
	CPipe(int id) : m_ID(id)
	{
		//CConnection c1(f, t, this);
	};
	~CPipe();
	unsigned int getId()
	bool addSensor(boost::shared_ptr<CSensor> s)
	{
		if (s->m_getType().getLoc() == NODESENSORTYPE) // if sensor is a pipe sensor
		{
			m_Sensors.push_back(s);
			return true;
		}
		else
			return false;
	};
	bool addActuator(boost::shared_ptr<CActuator> a)
	{
		if (a->m_getType().getLoc() == PIPESENSORTYPE) // if actuator is a pipe actuator
		{
			m_Actuators.push_back(a);
			return true;
		}
		else
			return false;
	};

private:
	unsigned int m_ID;

	std::vector<boost::shared_ptr<CSensor>> m_Sensors; // Sensor at the node

	std::vector<boost::shared_ptr<CActuator>> m_Actuators; // Sensor at the node
};
