#pragma once
#include <string>
#include <vector>
#include <boost/variant.hpp>
#include "CMeasType.h"


/*
* This implementation of classes can work in two ways either as to tables or one.
* When ever you create although it is VERY important that when you create the class
* you typecast the m_TypeID to the appropiate type to avoid bugs.
*/
typedef enum
{
	FLOW,
	PREASURE,
	MINERAL,
} PipeSensType;
typedef enum
{
	HUMIDITY=100,
	TEMPERATURE,
	RAIN,
	SOLAR_INCIDENCE,
	BAROMETER

} NodeSensType;
#define PIPESENSORTYPE 0
#define NODESENSORTYPE 1
class CSenseType
{
public:
	CSenseType();
	CSenseType(boost::variant<PipeSensType, NodeSensType> t, std::string desc) : m_TypeID(t), m_description(desc){};

	~CSenseType(){
		// for (auto it = mp_Measuremets.begin(); it != mp_Measuremets.end(); ++it)
		// 	delete *it;
	};
	int getLoc()
	{
		return m_TypeID.which(); // returns 0 if pipe type 1 if node type
	};
	


private:
	std::string m_description; // name of type
	boost::variant<PipeSensType, NodeSensType> m_TypeID;
	std::string m_desc;
protected:
	unsigned int m_NumberMeas; // to allow multiple values to be stored in a single measurement (of the same type)
};


