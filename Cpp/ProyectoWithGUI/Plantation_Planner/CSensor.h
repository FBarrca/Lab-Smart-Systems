#pragma once
#include <vector>
#include "CMeasurement.h"

class CSensor
{
private:
	std::vector<std::shared_ptr<CMeasurement>> sensor_measurements;
	int id_sensor;
public:
	CSensor();
	CSensor(int id, std::vector<std::shared_ptr<CMeasurement>> measurements);
	~CSensor();


};