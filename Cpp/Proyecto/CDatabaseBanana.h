// --------------------------------------------------------------------------
// ---------------------- CABECERA DE LA CLASE CDatabaseExample --------------------
// --------------------------------------------------------------------------
// 
// Archivo: CDatabase4.hpp
//
// Descripción: Clase ejemplo donde iran las queries del proyecto.
//
// Versión:
//
// Fecha: 04/10/2021
//
// Autor: Carlos Becker Robles
//
// --------------------------------------------------------------------------

#include "CDatabase.hpp"
#include "CValue.h"
#include "CSensor.h"

#include <list>
#include <vector>


class CDatabaseBanana : public CDatabase
{
public:

	enum class prediction_type : int32_t {
		default_prediction = 0,
		consumption_kWh = 1,
		temeperature_ref = 2
	};

	CDatabaseBanana();
	~CDatabaseBanana();

	/**
	* Inserts a prediction
	*
	* @param[in] initialDate			Date of prediction
	* @param[in] pred_type				Type of prediction
	* @param[in] useAutoIncrement		Defines wether query uses auto increment or not
	*
	* @return id of prediction
	*/
	int insertValue(const uint64_t& IdVariable, const CValue & CValue);


	static bool CDatabaseBanana::insertWeather(const time_t& tm, const time_t& tm_p, const int& r, const int& t);

	/**
	* Gets prosumer mpan
	*
	* @param[in] prosumer_id			Prosumer ID
	* @param[in] mpan					MPAN string reference
	*
	* @return Success or failure
	*/
	bool getValues(const int32_t& IdVariable, std::vector<CValue>& CValues);

	/**
	* Updates prosumer mpan
	*
	* @param[in] prosumer_id			Prosumer ID
	* @param[in] mpan					MPAN
	*
	* @return Success or failure
	*/
	bool updateValue(const int32_t& IdVariable, const CValue& CValue);
	/**
	* Deeltes prosumer mpan
	*
	* @param[in] prosumer_id			Prosumer ID
	* @param[in] mpan					MPAN
	*
	* @return Success or failure
	*/
	bool deleteValue(const int32_t& IdVariable, const CValue& CValue);

	/*
	* Inserts all pressure sensors instances into the sensor list
	* 
	* @param[in] sensor_list     list that will get all the pressure values
	* 
	* @return Success or failure
	*/

	bool getPressure(std::vector<CSensor>& sensor_list);

	/*
	* Inserts all flow rate sensors instances into the sensor list
	*
	* @param[in] sensor_list     list that will get all the flow rate values
	*
	* @return Success or failure
	*/

	bool getFlowRates(std::vector<CSensors>& sensor_list);

	/*
	* Inserts all mineral sensors instances into the sensor list
	*
	* @param[in] sensor_list     list that will get all the mineral values
	*
	* @return Success or failure
	*/

	bool getMineral(std::vector<CSensor>& sensor_list);

	/*
	* Changes the state of the valve in the specified pump
	*
	* @param[in] id_actuator     id of the pump
	*
	* @return Success or failure
	*/

	bool changeValve(int id_actuator);

	/*
	* Changes the fertilizer value in the specified pump
	*
	* @param[in] id_actuator     id of the pump
	*
	* @return Success or failure
	*/

	bool changeInjector(int id_actuator);

	bool getSectorPumps(const CSector& sector);

	bool getSectorPressure(const CSector& sector, time_t from_fecha, time_t to_fecha, std::list<CValues*>& pressure_list);

	bool getSectors(std::vector<boost::shared_ptr<CSector>> & sectors);

	bool getPipes(std::vector<boost::shared_ptr<CPipe>> & pipes);

	bool getConnections(std::vector<boost::shared_ptr<CSector>>& sectors, std::vector<boost::shared_ptr<CPipe>>& pipes, std::vector<boost::shared_ptr<CConnection>> & connection s);

private:

};

bool findCValueOnVectorByDate(std::vector<CValue>& vCValue, CValue& findValue, time_t date);

bool findCValueOnVector(std::vector<CValue>& vCValue,const CValue& findValue);
