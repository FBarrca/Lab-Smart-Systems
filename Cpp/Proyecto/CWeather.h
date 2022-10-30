#pragma once
#include <ctime>
#include "CDatabaseBanana.h"
class CWeather
{

	public:
		CWeather(time_t tm, int r, int t) : m_ts(tm), m_rain(r), m_temperature(t) , m_ts_prediction(time(0)){
			CDatabaseBanana::insertWeather(tm, time(0), r, t);
		};
	private:
		time_t m_ts;
		time_t m_ts_prediction; // time when the prediction was made
		int m_rain; // rain chance
		int m_temperature;
};

