
#include "CEstate.h"

#include "../imgui.h"
#include "../imnodes/imnodes.h"

CEstate::CEstate(int lon, int lat, std::string desc)
{

    /* m_Address.lon = lon;
     m_Address.lat = lat;
     m_Address.m_description = desc;*/
    m_lat = lat;
    m_lon = lon;
}
CEstate::CEstate()
{
    m_lat = 0;
    m_lon = 0;
    m_Address = "Default";
}
bool CEstate::setCoordinates(const int &Lon, const int &Lat) { return false; }
