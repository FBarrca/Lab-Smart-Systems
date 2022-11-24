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
       // ImGui::Text("--> State:", m_vect_values[0]->getValue());
    }
    ImGui::SameLine();
    if (ImGui::Button("Close"))
    {
    }
    if (ImGui::BeginPopupModal(strcat(child_name, id_string), NULL, NULL))
    {
        static float arr[9999];
        int i = 0;
        float max = 0;
      
        for (auto value : m_vect_values) {
            
            arr[i] = value.get()->getValue();
            if (arr[i] > max) { max = arr[i]; }
            i++;

        }
        char cadena[10];
        itoa(m_ID, cadena, 10);
        ImGui::PlotHistogram(cadena, arr, m_vect_values.size(), 0, NULL, 0.0f, max, ImVec2(200, 380));
        if (ImGui::Button("OK", ImVec2(120, 0))) { ImGui::CloseCurrentPopup(); }
        //ImGui::SetItemDefaultFocus();
        i = m_vect_values.size();
        ImGui::EndPopup();
    }
}

CActuator::~CActuator()
{
}


