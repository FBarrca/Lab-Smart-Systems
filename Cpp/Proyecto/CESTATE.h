#include <vector>
#include <boost/smart_ptr/shared_ptr.hpp>
#include "CWeather.h"
#include <string>





class CEstate
{

public:
	CEstate(int lon, int lat);
	CEstate(int lon, int lat, std::string desc);

	bool setCoordinates(const int &Lon, const int &Lat);

private:
	struct {
	
		int lon;
		int lat;
		std::string description = "No description given";
	} m_Address;

	std::vector<boost::shared_ptr<CWeather>> mp_Weather_forecast;
};
