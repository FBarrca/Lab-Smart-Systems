#pragma once
#include <String>
#include "CSenseType.h"
#include "CMeasurement.h"
#include <vector>

#include <boost/make_shared.hpp>




/* This is a general class for both PIPE and SECTOR sensors.
* As they both act the same way it would be absurd to make two classes
* Each type of sensor has its own child class.
* The sensor and pipe classes do a type check before adding sensors using the sensor type 
to prevent adding a sensor at the wrong location type
*/

class CSensor
{
public:
	CSensor();
	CSensor(std::string d, CSenseType st, CMeasType mt) : m_description(d), m_type(st){};
	~CSensor();

	// Creates a measurement and adds it to the vector of measurements.
	//  [in] values - vector of values to be added to the measurement
	void createMeasurement(std::vector<CValue> values){
		//mp_measurements.push_back(boost::make_shared<CMeasurement>(new CMeasurement(values, m_type)));
	};
	CSenseType& m_getType() { return m_type; };
private:
	std::string m_description;									  // name of sensor
	CSenseType m_type;										  //
	bool m_isSwitch;											  // if the sensor is a switch or not(aka % on or off)
	std::vector<boost::shared_ptr<CMeasurement>> mp_measurements; // vector of measurements over time
};


class CFlow : public CSensor
{
public:
	CFlow() : CSensor("Flow", CSenseType(FLOW, "Flow rate [m^3/s]"), CMeasType("L/s", "Flow", 1)){};
	~CFlow();
};
class CPressure : public CSensor
{
public:
	CPressure() : CSensor("Pressure", CSenseType(PREASURE, "Pressure [Pa]"), CMeasType("Pa", "Pressure", 1)){};
	~CPressure();
};
class CMineral : public CSensor
{
public:
	CMineral() : CSensor("Mineral", CSenseType(MINERAL, "Mineral concentration [mg/L]"), CMeasType("mg/L", "Mineral", 1)){};
	~CMineral();
};
class CHumidity : public CSensor
{
public:
	CHumidity() : CSensor("Humidity", CSenseType(HUMIDITY, "Humidity [%]"), CMeasType("%", "Humidity", 1)){};
	~CHumidity();
};
class CTemperature : public CSensor
{
public:
	CTemperature() : CSensor("Temperature", CSenseType(TEMPERATURE, "Temperature [C]"), CMeasType("C", "Temperature", 1)){};
	~CTemperature();
};
class CRain : public CSensor
{
public:
	CRain() : CSensor("Rain", CSenseType(RAIN, "Rain [mm]"), CMeasType("mm", "Rain", 1)){};
	~CRain();
};
class CSolarIncidence : public CSensor
{
public:
	CSolarIncidence() : CSensor("SolarIncidence", CSenseType(SOLAR_INCIDENCE, "Solar incidence [W/m^2]"), CMeasType("W/m^2", "Solar incidence", 1)){};
	~CSolarIncidence();
};
