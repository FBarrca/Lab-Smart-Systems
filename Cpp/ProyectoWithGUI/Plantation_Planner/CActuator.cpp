#include "CActuator.h"
#include "bananas/CValue.h"

CActuator::CActuator()
{
}

void CActuator::addValue(std::vector<CValue*> values)
{
	for (auto &value : values) {
		(this->m_vect_values).push_back(value);
	}
}

void CActuator::draw()
{
    char child_name[64] = "GraphView ";
    char button_name[64] = "Button Act";
    char id_string[32];
    sprintf(id_string, "%d", m_ID);

    ImGui::Text("%s %d", m_type.getDesc(), m_ID);
    ImGui::SameLine();
    if (ImGui::Button(strcat(button_name, id_string))) {
        ImGui::OpenPopup(strcat(child_name, id_string));
    }
    if (m_vect_values.empty()) {
        ImGui::Text("--> State: No data");
    }
    else {
        ImGui::Text("--> State:", m_vect_values[0]->getValue());
    }
    ImGui::SameLine();
    if (ImGui::Button("Close"))
    {
    }
    if (ImGui::BeginPopupModal(strcat(child_name, id_string), NULL, NULL))
    {
        static float arr[] = { 0.6f, 0.1f, 1.0f, 0.5f, 0.92f, 0.1f, 0.2f };
        char cadena[10];
        itoa(m_ID, cadena, 10);
        ImGui::PlotHistogram(cadena, arr, IM_ARRAYSIZE(arr), 0, NULL, 0.0f, 1.0f, ImVec2(0, 80));
        if (ImGui::Button("OK", ImVec2(120, 0))) { ImGui::CloseCurrentPopup(); }
        //ImGui::SetItemDefaultFocus();
        ImGui::EndPopup();
    }
}

CActuator::~CActuator()
{
}


