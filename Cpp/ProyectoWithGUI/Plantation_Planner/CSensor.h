#pragma once
#include <vector>
#include "CValue.h"

class CSensor
{
private:
	std::vector<CValue*> sensor_values;
	int id_sensor;
public:
	// constructor and destructor
	CSensor();
	CSensor(int id, std::vector<CValue*> values);
	~CSensor();

	// getters and setters
	int getID() const;
	void getValues(std::vector<CValue*>& values);
	CValue getLastnValue(int n);
	CValue getLastValue() { return getLastnValue(1); };
	void setID(int id);
	void setValues(std::vector<CValue*> values);

};