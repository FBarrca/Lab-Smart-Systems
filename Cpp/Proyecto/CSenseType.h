#pragma once
#include <string>
#include <vector>
#include <boost/variant.hpp>
#include "CMeasType.h"
typedef enum
{
	FLOW,
	PREASURE,
	MINERAL,
} PipeSensType;
typedef enum
{
	HUMIDITY,
	TEMPERATURE,
	RAIN,
	SOLAR_INCIDENCE,
	BAROMETER

} NodeSensType;

class CSenseType
{
public:
	CSenseType();
	// CSenseType(boost::variant<PipeSensType, NodeSensType> t, std::string desc, std::vector<CMeasType*> vm ) : m_TypeID(t), m_description(desc), mp_Measuremets(vm) {};
	CSenseType(boost::variant<PipeSensType, NodeSensType> t, std::string desc) : m_TypeID(t), m_description(desc){};

	~CSenseType(){
		// for (auto it = mp_Measuremets.begin(); it != mp_Measuremets.end(); ++it)
		// 	delete *it;
	};
	int getLoc()
	{
		return m_TypeID.which(); // returns 0 if pipe type 1 if node type
	};
	std::vector<CMeasType *> getMeasurements() { return mp_Measuremets; };

private:
	std::string m_description; // name of type
	boost::variant<PipeSensType, NodeSensType> m_TypeID;
	// std::vector<CMeasType *> mp_Measuremets; // type of measurements the sensor creates (vector incase there are multiple )
};
