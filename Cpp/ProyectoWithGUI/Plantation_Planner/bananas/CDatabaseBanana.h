// --------------------------------------------------------------------------
// ---------------------- CABECERA DE LA CLASE CDatabaseExample --------------------
// --------------------------------------------------------------------------
//
// Archivo: CDatabase4.hpp
//
// Descripci�n: Clase ejemplo donde iran las queries del proyecto.
//
// Versi�n:
//
// Fecha: 04/10/2021
//
// Autor: Carlos Becker Robles
//
// --------------------------------------------------------------------------

#include "../dm-database/CDatabase.hpp"
#include "CValue.h"
//#include "CSensor.h"
#include "CSector.h"

#include <list>
#include <vector>

class CDatabaseBanana : public CDatabase
{
public:
	enum class prediction_type : int32_t
	{
		default_prediction = 0,
		consumption_kWh = 1,
		temeperature_ref = 2
	};

	CDatabaseBanana();
	~CDatabaseBanana();

	// static bool insertWeather(const time_t& tm, const time_t& tm_p, const int& r, const int& t);

	// bool getPressure(std::vector<CSensor>& sensor_list);

	/*
	 * Inserts all flow rate sensors instances into the sensor list
	 *
	 * @param[in] sensor_list     list that will get all the flow rate values
	 *
	 * @return Success or failure
	 */

	// bool getFlowRates(std::vector<CSensors>& sensor_list);

	/*
	 * Inserts all mineral sensors instances into the sensor list
	 *
	 * @param[in] sensor_list     list that will get all the mineral values
	 *
	 * @return Success or failure
	 */

	// bool getMineral(std::vector<CSensor>& sensor_list);

	/*
	 * Changes the state of the valve in the specified pump
	 *
	 * @param[in] id_actuator     id of the pump
	 *
	 * @return Success or failure
	 */

	// bool changeValve(int id_actuator);

	/*
	 * Changes the fertilizer value in the specified pump
	 *
	 * @param[in] id_actuator     id of the pump
	 *
	 * @return Success or failure
	 */

	bool getSectors(std::list<std::shared_ptr<CSector>> &sectors);
	
private:
};

// bool findCValueOnVectorByDate(std::vector<CValue>& vCValue, CValue& findValue, time_t date);

// bool findCValueOnVector(std::vector<CValue>& vCValue,const CValue& findValue);
