#include "CSector.h"

#include <iostream>


#define OFFSETCONNECTION 1000

CSector::CSector()
{
    std::cout << "CSector::CSector()" << std::endl;
}

CSector::CSector(unsigned int i, CEstate e, float w)
{
    m_id = i;
    m_estate = e;
    m_water_demand = w;

    m_gui_data.Nodeid = m_id * OFFSETCONNECTION + 2;

}

// CSector::~CSector() {}

// void CSector::draw()
