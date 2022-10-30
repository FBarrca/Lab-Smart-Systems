#pragma once
class CPipe
{
public:

private:
	std::vector<boost::shared_ptr<CSensor> > Sensors; // Sensor at the node

	std::vector<boost::shared_ptr<CActuator> > Actuators; // Sensor at the node

};

