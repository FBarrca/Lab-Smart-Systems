#include "CSector.h"

#include <iostream>

#define OFFSETCONNECTION 1000

CSector::CSector()
{
    std::cout << "CSector::CSector()" << std::endl;
}

CSector::CSector(unsigned int i, CEstate e, float w)
{
    m_id = i;
    m_estate = e;
    m_water_demand = w;

    m_gui_data.Nodeid = m_id * OFFSETCONNECTION + 1;
}

// CSector::~CSector() {}

void CSector::draw()
{
    ImNodes::PushColorStyle(
        ImNodesCol_TitleBar, IM_COL32(202, 81, 0, 255));
    ImNodes::BeginNode(this->m_id);
    ImNodes::BeginNodeTitleBar();
    ImGui::Text("Sector %d", this->m_id);
    ImNodes::EndNodeTitleBar();

    ImGui::Text("Desc: %s", this->m_description.c_str());
    // Water Demand
    if (this->m_gui_data.m_editing_water_demand)
    {
        ImVec2 nodeWidth = ImNodes::GetNodeDimensions(this->m_id);
        ImGui::Text("");
        ImGui::SameLine(); // HelpMarker("Fixed width.");
        ImGui::PushItemWidth(60);
        ImGui::InputFloat("Water Demand", &this->m_water_demand, 0.1f, 1.0f, "%.1f", ImGuiInputTextFlags_EnterReturnsTrue);
        ImGui::SameLine();
        if (ImGui::Button("Done"))
        {
            this->m_gui_data.m_editing_water_demand = false;
        }
    }
    else
    {
        ImGui::Text("Water Demand: %.1f", m_water_demand);
        ImGui::SameLine();
        if (ImGui::Button("Edit"))
        {
            std::cout << "Edit Water Demand" << std::endl;
            this->m_gui_data.m_editing_water_demand = true;
            std::cout << this->m_gui_data.m_editing_water_demand << std::endl;
        }
    }

    // Rightside attribute
    // const int output_attr_id = m_id * OFFSETCONNECTION + 2;
    ImNodes::BeginOutputAttribute(m_gui_data.Nodeid);
    // in between Begin|EndAttribute calls, you can call ImGui
    // UI functions
    ImGui::Text("Connections");
    ImNodes::EndOutputAttribute();
    char id_string[32];
    sprintf(id_string, "%d", m_id);
    char child_name[64] = "S&A Sector";
    ImGui::BeginChild(strcat(child_name, id_string), ImVec2(200, 80), false);
    if (ImGui::TreeNode("Sensors"))
    {

        ImGui::Text("ABOUT THIS DEMO:");
        ImGui::TreePop();
    }

    if (ImGui::TreeNode("Actuators"))
    {

        ImGui::Text("ABOUT THIS DEMO:");
        ImGui::TreePop();
    }
    ImGui::EndChild();
    // ImGui::PopClipRect();

    ImNodes::EndNode();
};

std::shared_ptr<CSector> getSectorById(unsigned int id, std::list<std::shared_ptr<CSector>> &sectors)
{
    for (auto &sector : sectors)
    {
        if (sector->m_id == id)
        {
            return sector;
        }
    }
    return nullptr;
}
