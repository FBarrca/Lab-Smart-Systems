#include "CActuator.h"
#include "CValue.h"
#include "CDatabaseBanana.h"

CActuator::CActuator()
{
}

void CActuator::addValue(std::shared_ptr<CValue>& v)
{
	m_vect_values.push_back(v);
}

void CActuator::addValue(std::list<std::shared_ptr<CValue>>& v)
{
	for (std::shared_ptr<CValue> itr : v) {
		m_vect_values.push_back(itr);
	}
}

void CActuator::draw()
{

	ImGui::Text("%s %d", m_type.getDesc(), m_ID);
	ImGui::SameLine();
	//if (ImGui::Button(strcat(button_name, id_string))) {
	if (ImGui::Button(("Graph##GraphAct" + std::to_string(m_ID)).c_str())) {

		ImGui::OpenPopup(("GraphViewAct" + std::to_string(m_ID)).c_str());
	}
	if (m_vect_values.empty()) {
		ImGui::Text("==> Value: No data");
	}
	else {
		//Not empty

		if (m_type.getIsSwitch()) {
			//Is Switch
			bool currentValue = 0;
			ImGui::Text(u8"==> Value: %.0f", m_vect_values.back().get()->getValue());
			ImGui::SameLine();
			if (!m_vect_values.empty())currentValue = (bool)m_vect_values.back().get()->getValue();
			std::string button_label = currentValue ? "Close" : "Open";
			std::string button_id = "##ButtonActuate" + std::to_string(m_ID);
			button_label += button_id;
			if (ImGui::Button(button_label.c_str()))
			{
				CDatabaseBanana dbObject;
				dbObject.Conectar(SCHEMA_NAME, HOST_NAME, USER_NAME, PASSWORD_USER);
				dbObject.ComienzaTransaccion();
				if (dbObject.setActuator(!currentValue, this)) {
					std::shared_ptr<CValue> value = std::make_shared<CValue>(!currentValue, time(0));
					m_vect_values.push_back(value);
				};
				dbObject.ConfirmarTransaccion();
				dbObject.Desconectar();
			}
		}
		else {
			//Isnt a switch (not yet implemented or tested )
			static float act, ant;
			ImGui::InputFloat("Water Demand", &act, 0.1f, 1.0f, "%.1f", ImGuiInputTextFlags_EnterReturnsTrue);
			if (act = !ant) {
				//Update database
				CDatabaseBanana dbObject;
				dbObject.Conectar(SCHEMA_NAME, HOST_NAME, USER_NAME, PASSWORD_USER);
				dbObject.ComienzaTransaccion();
				if (dbObject.setActuator(act, this)) {
					std::shared_ptr<CValue> value = std::make_shared<CValue>(act, time(0));
					m_vect_values.push_back(value);
				};
				dbObject.ConfirmarTransaccion();
				dbObject.Desconectar();
			}
			ant = act;
		}
	}
	// PopUp of Actuator
	if (ImGui::BeginPopupModal(("GraphViewAct" + std::to_string(m_ID)).c_str(), NULL, NULL))
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
		ImGui::Text("    ");
		ImGui::SameLine();
		ImGui::PlotHistogram(("##SensorHist" + std::to_string(m_ID)).c_str(), arr, m_vect_values.size(), 0, NULL, 0.0f, max, ImVec2(800, 480));
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
			ImGui::SetCursorPosX(45 + (ImGui::GetWindowSize().x - 80) / (j)*i);
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

		ImGui::Text("    ");
		i = m_vect_values.size();
		ImGui::EndPopup();
	}
}

CActuator::~CActuator()
{
}


