#include "CActuator.h"
#include "bananas/CValue.h"

CActuator::CActuator()
{
}

void CActuator::addValue(std::list<std::shared_ptr<CValue>> &v)
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
        ImGui::Text("⇒ Value: No data");
    }
    else {

        ImGui::Text(u8"╚⇒ Value: %.2f", m_vect_values.front().get()->getValue());
    }
    ImGui::SameLine();
    if (ImGui::Button("Close"))
    {
    }
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
		ImGui::PlotHistogram(("##SensorHist" + std::to_string(m_ID)).c_str(), arr, m_vect_values.size(), 0, NULL, 0.0f, max, ImVec2(600, 480));
		ImGui::SameLine();
		ImGui::Text("    ");
		//ImGui::Text("Sensor %d", id_sensor);


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


