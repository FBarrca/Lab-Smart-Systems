#pragma once
#include <string>
#include <vector>
#include <list>
#include "CActType.h"
#include "CValue.h"
#include "../imgui.h"

class CActuator
{
public: //prueba 
    CActuator();
    void addValue(std::shared_ptr<CValue>& v);
    void addValue(std::list<std::shared_ptr<CValue>>& v);
    std::shared_ptr<CValue> getLastValue();

    CActuator(unsigned int i, CActType t) :m_ID(i), m_type(t) {};
    ~CActuator();
    int getId() { return m_ID; };
    CActType& m_getType() { return m_type; };

    void draw();

protected:
    CActType m_type;
    unsigned int m_ID;
    std::list<std::shared_ptr<CValue>> m_vect_values;
};