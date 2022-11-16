#pragma once
#include <string>
#include <vector>
#include "CActType.h"
#include "bananas/CValue.h"
class CActuator
{
public: //prueba 
    CActuator();
    CActuator(unsigned int i, CActType t) :m_ID(i), m_type(t) {};
    ~CActuator();
    int getId() { return m_ID; };
    void addValue(std::vector<CValue*> values);
    CActType& m_getType() { return m_type; };

protected:
    CActType m_type;
    unsigned int m_ID;
    //float m_value; // might be good to have a historic of values 
    std::vector<CValue*> m_vect_values; //ERROR si shared_ptr???
};

/*
class CWaterValve : public CActuator {
    CWaterValve(unsigned int id) : CActuator(id, "Water Valve " + id, CActType(WATER_VALVE, "Water Valve", true)) {};
};
class CPump : public CActuator {
    CPump(unsigned int id) : CActuator(id, "Pump " + id, CActType(PUMP, "Pump", true)) {};
};
class CNutritionValve : public CActuator {
    CNutritionValve(unsigned int id) : CActuator(id, "Nutrition_valve " + id, CActType(NUTRITION_VALVE, "Nutrition_valve", false)) {};
};
*/
