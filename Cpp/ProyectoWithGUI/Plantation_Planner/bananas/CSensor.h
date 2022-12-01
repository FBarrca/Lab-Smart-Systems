#pragma once
#include <vector>
#include <list>
#include <string>
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
	std::string getUnit();
	int getLoc();


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
	std::string getType();
	int getLoc();

	void deleteLastValue();

	void draw();
	void getValues(std::vector<CValue*>& values);
	std::list<std::shared_ptr<CValue>> getLastnValue(int n );
	std::shared_ptr<CValue> getLastValue();
	void setID(int id);

};


