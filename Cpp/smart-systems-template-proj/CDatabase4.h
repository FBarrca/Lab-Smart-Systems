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
#include <list>


class CDatabaseMIC : public CDatabase
{
public:

	enum class prediction_type : int32_t {
		default_prediction = 0,
		consumption_kWh = 1,
		temeperature_ref = 2
	};

	CDatabaseMIC();
	~CDatabaseMIC();

	/**
	* Inserts a prediction
	*
	* @param[in] initialDate			Date of prediction
	* @param[in] pred_type				Type of prediction
	* @param[in] useAutoIncrement		Defines wether query uses auto increment or not
	*
	* @return id of prediction
	*/
	int insertValue(const uint64_t& IdVariable, const CValue & CValue, const bool useAutoIncrement);

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

private:

};
