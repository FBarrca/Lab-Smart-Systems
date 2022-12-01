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

#include <string>
#include "../dm-database/CDatabase.hpp"
#include "CValue.h"
#include "CSensor.h"
#include "CSector.h"
#include "CPipe.h"
#include "./CActuator.h"

#include <list>
#include <vector>

#define SCHEMA_NAME "banana"
#define HOST_NAME "127.0.0.1:3306"
#define USER_NAME "root"
#define PASSWORD_USER "root"

static class CDatabaseBanana : public CDatabase
{
public:

	CDatabaseBanana();
	~CDatabaseBanana();

	// GET SECTORS
	bool getSectors(std::list<std::shared_ptr<CSector>> &sectors);
	// GET PIPES
	bool getPipes(std::list<std::shared_ptr<CPipe>> &pipes, std::list<std::shared_ptr<CSector>> &sectors);

	// GET ACTUATORS
	bool getPipeActuators(std::list<std::shared_ptr<CActuator>> actuator_vector, std::shared_ptr<CPipe> pipe);
	bool getSectorActuators(std::list<std::shared_ptr<CActuator>>& actuator_vector, std::shared_ptr<CSector>& sector);

	// GET SENSORS
	bool getPipeSensors(std::list<std::shared_ptr<CSensor>> & sensor_vector, std::shared_ptr<CPipe>& pipe);
	bool getSectorSensors(std::list<std::shared_ptr<CSensor>>& sensor_vector, std::shared_ptr<CSector>& sector);


	// GET VALUES
	bool getValuesActuator(std::list<std::shared_ptr<CValue>>& vector, uint16_t ActID, std::string location, time_t from, time_t to);
	bool getValuesSensor(std::list<std::shared_ptr<CValue>>& vector, uint16_t ActID, std::string location, time_t from, time_t to);

	bool getValuesNew(CActuator* act, time_t from, time_t to);

	
	// CLOSE VALVE 
	bool setActuator(double state, CActuator* act, time_t t); // Pasamos puntero para poder usarlo dentro de la Clase CActuator con this.
	//INSERT INTO value_sector_actuator (ID_ACTUATOR, TIMESTAMP, VALUE) VALUES (1,now(),3);

	//UPDATE WATER DEMAND
	bool updateWaterdemand(float dem, CSector* sect);

	//DELETE LATEST VALUE
	bool deleteLatestValue(CSensor* sens);
	bool deleteLatestValue(CActuator* act);
private:


};
