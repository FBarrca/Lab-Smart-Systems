#include "CSensor.h"

CSensor::CSensor()
{
	/*std::vector<CValue*> values;
	id_sensor = 0;
	sensor_values = values;*/

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

//void CSensor::getLastnValue(int n, std::vector<CValue>& values)
//{
//	
//}

CValue CSensor::getLastValue()
{
	/*std::vector<std::shared_ptr<CValue>>::iterator it;
	it = m_vect_values.begin();
	time_t min_t = 0;
	CValue lastValue((*it)->getValue(), (*it)->getDate());
	for (int i = 0; i < m_vect_values.size(); i++, it++)
	{
		if ((lastValue.getDate()) < ((*it)->getDate()))
		{
			lastValue.setDate((*it)->getDate());
			lastValue.setValue((*it)->getValue());
		}
	}*/

	//return lastValue;
	return CValue(2, 3);
}

void CSensor::setID(int id)
{
	id_sensor = id;
}

void CSensor::setValues(std::vector<CValue*> Values)
{
	/*std::vector<CValue*>::iterator it;
	it = Values.begin();
	for (int i = 0; i < Values.size(); i++, it++)
	{
		sensor_values.push_back(*it);
	}*/
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

void CSensor::draw()
{
	char child_name[64] = "GraphView ";
	char button_name[64] = "Button Act";
	char id_string[32];
	sprintf(id_string, "%d", id_sensor);

	ImGui::Text("%s %d", m_type.getDesc(), id_sensor);
	ImGui::SameLine();
	if (ImGui::Button(strcat(button_name, id_string))) {
		ImGui::OpenPopup(strcat(child_name, id_string));
	}
	//if (m_vect_values.empty()) {
	//	ImGui::Text("--> State: No data");
	//}
	//else {
	//	ImGui::Text("--> State:", m_vect_values[0]->getValue());
	//}
	//ImGui::SameLine();
	//if (ImGui::Button("Close"))
	//{
	//}
	//if (ImGui::BeginPopupModal(strcat(child_name, id_string), NULL, NULL))
	//{
	//	static float arr[] = { 0.6f, 0.1f, 1.0f, 0.5f, 0.92f, 0.1f, 0.2f };
	//	char cadena[10];
	//	itoa(m_ID, cadena, 10);
	//	ImGui::PlotHistogram(cadena, arr, IM_ARRAYSIZE(arr), 0, NULL, 0.0f, 1.0f, ImVec2(0, 80));
	//	if (ImGui::Button("OK", ImVec2(120, 0))) { ImGui::CloseCurrentPopup(); }
	//	//ImGui::SetItemDefaultFocus();
	//	ImGui::EndPopup();
	//}
}