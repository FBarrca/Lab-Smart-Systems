#include "CSensor.h"

CSensor::CSensor()
{
	std::vector<CValue*> values;
	id_sensor = 0;
	sensor_values = values;

}

CSensor::CSensor(int id, std::vector<CValue*> values)
{
	id_sensor = id;
	sensor_values = values;
}

CSensor::~CSensor()
{
}

int CSensor::getID() const
{
	return id_sensor;
}

void CSensor::getValues(std::vector<CValue*>& values)
{
	std::vector<CValue*>::iterator it;
	it = sensor_values.begin();
	for (int i = 0; i < sensor_values.size(); i++, it++)
	{
		values.push_back(*it);
	}
}

//void CSensor::getLastnValue(int n, std::vector<CValue>& values)
//{
//	
//}

CValue CSensor::getLastValue()
{
	std::vector<CValue*>::iterator it;
	it = sensor_values.begin();
	time_t min_t = 0;
	CValue lastValue((*it)->getValue(), (*it)->getDate());
	for (int i = 0; i < sensor_values.size(); i++, it++)
	{
		if ((lastValue.getDate()) < ((*it)->getDate()))
		{
			lastValue.setDate((*it)->getDate());
			lastValue.setValue((*it)->getValue());
		}
	}

	return lastValue;

}

void CSensor::setID(int id)
{
	id_sensor = id;
}

void CSensor::setValues(std::vector<CValue*> Values)
{
	std::vector<CValue*>::iterator it;
	it = Values.begin();
	for (int i = 0; i < Values.size(); i++, it++)
	{
		sensor_values.push_back(*it);
	}
}

SensorType::SensorType()
{
	m_id = 0;
	m_description = "";
	m_unit = "";
	m_Loc = SECTORTYPE;
}

SensorType::~SensorType()
{
}

SensorType::SensorType(unsigned int id, std::string description, std::string unit, TypeOfLoc Loc)
{
	m_id = id;
	m_description = description;
	m_unit = unit;
	m_Loc = Loc;
}
