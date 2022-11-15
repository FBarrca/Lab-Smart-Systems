#pragma once
#include <vector>
#include "CValue.h"

class CSensor
{
private:
	std::vector<CValue*> sensor_values;
	int id_sensor;
	SensorType m_type;
public:
	// constructor and destructor
	CSensor();
	CSensor(int id, std::vector<CValue*> values);
	~CSensor();

	// getters and setters
	int getID() const;
	void getValues(std::vector<CValue*>& values);
	//void getLastnValue(int n, std::vector<CValue>& values);
	CValue getLastValue();
	void setID(int id);
	void setValues(std::vector<CValue*> values);

};

typedef enum {
SECTORTYPE,
PIPETYPE
} TypeOfLoc; 

class SensorType
{
public:
	SensorType();
	~SensorType();

private:
	unsigned int m_id;
	std::string m_description;
	std::string m_unit;
	TypeOfLoc m_Loc;

	friend CSensor;
}; 


