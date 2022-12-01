#include "CSensor.h"
#include "CValue.h"
#include "CDatabaseBanana.h"

#include "../implot/implot.h"

CSensor::CSensor()
{
}

void CSensor::addValue(std::list<std::shared_ptr<CValue>>& v)
{
	for (std::shared_ptr<CValue> itr : v) {
		m_vect_values.push_back(itr);
	}
}

std::string CSensor::getType()
{
	return m_type.getDesc();
}

int CSensor::getLoc()
{

	return m_type.getLoc();
}

void CSensor::deleteLastValue()
{
	m_vect_values.pop_back();
}

CSensor::CSensor(int id, std::vector<CValue*> values)
{
	id_sensor = id;
	//sensor_values = values;
}

CSensor::CSensor(int id, SensorType t)
{
	id_sensor = id;
	m_type = t;
}

CSensor::~CSensor()
{
}

int CSensor::getID() const
{
	return id_sensor;
}

void CSensor::getValues(std::vector<CValue*>& values)
{
	/*std::vector<CValue*>::iterator it;
	it = m_vect_values.begin();
	for (int i = 0; i < m_vect_values.size(); i++, it++)
	{
		values.push_back(*it);
	}*/
}

std::list<std::shared_ptr<CValue>> CSensor::getLastnValue(int n)
{
	int last_n = n > m_vect_values.size() ? m_vect_values.size(): n;
	// return the last n values of m_vect_values
	std::list<std::shared_ptr<CValue>> last_n_values;
	std::list<std::shared_ptr<CValue>>::iterator it = m_vect_values.end();
	for (int i = 0; i < last_n; i++, it--)
	{
		last_n_values.push_front(*it);
	}
	return last_n_values;
}

//void CSensor::getLastnValue(int n, std::vector<CValue>& values)
//{
//	
//}

std::shared_ptr<CValue> CSensor::getLastValue()
{
	return m_vect_values.back();
}

void CSensor::setID(int id)
{
	id_sensor = id;
}


SensorType::SensorType()
{
	m_id = 0;
	m_description = "";
	m_unit = "";
	m_Loc = SECTORTYPE;
}

SensorType::~SensorType()
{
}

SensorType::SensorType(unsigned int id, std::string description, std::string unit, int Loc)
{
	m_id = id;
	m_description = description;
	m_unit = unit;
	m_Loc =(TypeOfLoc) Loc;
}

std::string SensorType::getDesc()
{
	return m_description;
}

std::string SensorType::getUnit()
{
	return m_unit;
}

int SensorType::getLoc()
{
	return m_Loc;
}


void CSensor::draw()
{
	ImGui::Text("%s %d", m_type.getDesc(), id_sensor);
	ImGui::SameLine();
	if (ImGui::Button(("Graph##GraphSensor" + std::to_string(id_sensor)).c_str())) {

		ImGui::OpenPopup(("Historical Graph View Sensor " + std::to_string(id_sensor)).c_str());
	}
	
	if (m_vect_values.empty()) {
		ImGui::Text("==> Value: No data");
		
	}
	else {
		ImGui::Text("==> Value: %.2f", m_vect_values.back().get()->getValue());
		ImGui::SameLine();
		if (ImGui::Button(("Delete last value##DeleteSensor" + std::to_string(id_sensor)).c_str())) {

			CDatabaseBanana dbObject;
			dbObject.Conectar(SCHEMA_NAME, HOST_NAME, USER_NAME, PASSWORD_USER);
			dbObject.ComienzaTransaccion();
			dbObject.deleteLatestValue(this);
			dbObject.ConfirmarTransaccion();
			dbObject.Desconectar();
		}
	}

	//Make a not resizable Modal
	if (ImGui::BeginPopupModal(("Historical Graph View Sensor " + std::to_string(id_sensor)).c_str(), NULL, NULL) )
	{
		ImGui::SetWindowSize(ImVec2(ImGui::GetIO().DisplaySize.x * 0.8f, ImGui::GetIO().DisplaySize.y * 0.55f));
		static double x[9999];
		static double y[9999];
		int i = 0;
		double xmax = 0;
		double xmin = 9999999999999999999;
		double ymax = 0;
		double ymin = 9999999999999999999;
		for (auto value : m_vect_values) {
			y[i] = value.get()->getValue();
			x[i] = value.get()->getDate();
			if (x[i] > xmax) { xmax = x[i]; }
			if (y[i] > ymax) { ymax = y[i]; }
			if (x[i] < xmin) { xmin = x[i]; }
			if (y[i] < ymin) { ymin = y[i]; }
			i++;
		}
		//Give vertical axis title of BAR
		if(ImPlot::BeginPlot(("Historical Graph View Sensor plot " + std::to_string(id_sensor)).c_str())){
		//ImPlot::SetupAxis();
		ImPlot::SetupAxisScale(ImAxis_X1, ImPlotScale_Time);
		ImPlot::SetupAxisLimits(ImAxis_X1, time(0) - 300, time(0) + 10);
		ImPlot::SetupAxisLimits(ImAxis_Y1, 0, ymax);
		ImPlot::SetNextMarkerStyle(ImPlotMarker_Circle);
		ImPlot::PlotStems("", x, y, i);
		ImPlot::EndPlot();
		}
		//Centered close button
		ImGui::SetCursorPosX((ImGui::GetWindowSize().x - 80) / 2);
		if (ImGui::Button("Close", ImVec2(80, 0))) { ImGui::CloseCurrentPopup(); }
		ImGui::Text("    ");
		i = m_vect_values.size();
		ImGui::EndPopup();
	}
}