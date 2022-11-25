#include "CSensor.h"
#include "CValue.h"

CSensor::CSensor()
{
	/*std::vector<CValue*> values;
	id_sensor = 0;
	sensor_values = values;*/

}

void CSensor::addValue(std::list<std::shared_ptr<CValue>>& v)
{
	for (std::shared_ptr<CValue> itr : v) {
		m_vect_values.push_back(itr);
	}
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

std::string SensorType::getUnit()
{
	return m_unit;
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
		ImGui::Text("==> Value: %.2f", m_vect_values.front().get()->getValue());
	}
	//Make a not resizable Modal
	if (ImGui::BeginPopupModal(("Historical Graph View Sensor " + std::to_string(id_sensor)).c_str(), NULL, ImGuiWindowFlags_AlwaysAutoResize)) 
	{
		static float arr[9999];
		int i = 0;
		float max = 0;

		for (auto value : m_vect_values) {

			arr[i] = value.get()->getValue();
			if (arr[i] > max) { max = arr[i]; }
			i++;

		}
		//Give vertical axis title of BAR
		ImGui::Text("    ");
		ImGui::Text(" %s", m_type.getUnit());
		ImGui::SameLine();
		ImGui::PlotHistogram(("##SensorHist" + std::to_string(id_sensor)).c_str(), arr, m_vect_values.size(), 0, NULL, 0.0f, max, ImVec2(600, 480));
		ImGui::SameLine();
		ImGui::Text("    ");
		//ImGui::Text("Sensor %d", id_sensor);
		int j = 0;
		static time_t arr2[9999];
		for (auto value : m_vect_values) {
			arr2[j] = value.get()->getDate();
			j++;
		}
		for (int i = 0; i < m_vect_values.size(); i++) {
			ImGui::SetCursorPosX(45+(ImGui::GetWindowSize().x - 80) / (j )* i);
			// Convert time_t to string Day/Month/Year Hour:Minutes:Seconds
			char buffer[80];
			struct tm* timeinfo;
			timeinfo = localtime(&arr2[i]);
			strftime(buffer, 80, "%d/%m/%Y %H:%M:%S", timeinfo);			
			ImGui::Text("%s", buffer);
			ImGui::SameLine();

		}
		
		ImGui::Text("    ");
		//Centered close button
		ImGui::SetCursorPosX((ImGui::GetWindowSize().x - 80) / 2);
		if (ImGui::Button("Close", ImVec2(80, 0))) { ImGui::CloseCurrentPopup(); }
		
		i = m_vect_values.size();
		ImGui::EndPopup();
	}
}