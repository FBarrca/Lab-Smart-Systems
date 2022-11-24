#pragma once
#include <vector>
#include <list>
#include "CValue.h"
#include <list>
#include "../imgui.h"

typedef enum {
	SECTORTYPE,
	PIPETYPE
} TypeOfLoc;

class SensorType
{
public:
	SensorType();
	~SensorType();
	SensorType(unsigned int id, std::string description, std::string unit, int Loc);
	std::string getDesc();
private:
	unsigned int m_id;
	std::string m_description;
	std::string m_unit;
	TypeOfLoc m_Loc;

};

class CSensor
{
private:
	std::list<std::shared_ptr<CValue>> m_vect_values;
	int id_sensor;
	SensorType m_type;
public:
	// constructor and destructor
	CSensor();
	CSensor(int id, std::vector<CValue*> values);
	CSensor(int id, SensorType t);
	~CSensor();

	// getters and setters
	int getID() const;
	void addValue(std::list<std::shared_ptr<CValue>>& v);
	void draw();
	void getValues(std::vector<CValue*>& values);
	//void getLastnValue(int n, std::vector<CValue>& values);
	CValue getLastValue();
	void setID(int id);
	void setValues(std::vector<CValue*> values);

};


