#pragma once
#include <vector>
//#include <boost/smart_ptr/shared_ptr.hpp>
//#include "CWeather.h"
#include <string>

class CEstate
{

public:
	CEstate();
	~CEstate(){};
	CEstate(int lon, int lat)
	{
		m_lon = lon;
		m_lat = lat;
	};
	CEstate(int lon, int lat, std::string desc);

	bool setCoordinates(const int &Lon, const int &Lat);

private:
	/*struct {
		int lon;
		int lat;
		std::string m_description;
	} m_Address;*/
	int m_lon;
	int m_lat;
	std::string m_Address = "Not Provided";

	// std::vector<boost::shared_ptr<CWeather>> mp_Weather_forecast;
};
