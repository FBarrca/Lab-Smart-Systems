#pragma once
#include <string>
#include<boost/variant.hpp>

typedef enum {
	WATER_VALVE
}PipeActType;
typedef enum {
	PUMP,
	NUTRITION_VALVE
}NodeActType;

class CActType
{
public:
	CActType();
	CActType(boost::variant<PipeActType, NodeActType> t, std::string desc, bool sw) : m_TypeID(t), m_description(desc), m_isSwitch(sw) {};
	~CActType();
	int getLoc() {
		return m_TypeID.which(); // returns 0 if pipe type 1 if node type
	};

private:
	bool m_isSwitch;
	std::string m_description; //name of type
	boost::variant<PipeActType, NodeActType> m_TypeID;
};

class CWaterValve : public CActType {
	CWaterValve() : CActType(WATER_VALVE, "Water Valve", true) {};
};
class CPump : public CActType {
	CPump() : CActType(PUMP, "Pump", true) {};
};
class CNutritionValve : public CActType {
	CNutritionValve() : CActType(NUTRITION_VALVE, "Nutrition_valve", false) {};
};
