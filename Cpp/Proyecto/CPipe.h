#pragma once

#include <vector>
#include <string>
#include <boost/variant.hpp>

class CPipe
{
public:
	CPipe();
	~CPipe();
	bool addSensor(boost::shared_ptr<CSensor> s)
	{
		if (s->getLoc() == 0) // if sensor is a pipe sensor
		{
			m_Sensors.push_back(s);
			return true;
		}
		else
			return false;
	};
	bool addActuator(boost::shared_ptr<CActuator> a)
	{
		if (a->getLoc() == 0) // if actuator is a pipe actuator
		{
			m_Actuators.push_back(a);
			return true;
		}
		else
			return false;
	};

private:
	std::vector<boost::shared_ptr<CSensor>> Sensors; // Sensor at the node

	std::vector<boost::shared_ptr<CActuator>> Actuators; // Sensor at the node
};
