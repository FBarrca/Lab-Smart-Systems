#include "CSensor.h"

CSensor::CSensor()
{
	std::vector<std::shared_ptr<CMeasurement>> measurements;
	id_sensor = 0;
	sensor_measurements = measurements;

}

CSensor::CSensor(int id, std::vector<std::shared_ptr<CMeasurement>> measurements)
{
	id_sensor = id;
	sensor_measurements = measurements;
}

CSensor::~CSensor()
{
}
