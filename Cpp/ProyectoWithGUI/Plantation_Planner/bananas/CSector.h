#pragma once
#include "CEstate.h"
#include <string>
#include "../imgui.h"
#include "../imnodes/imnodes.h"

//#include "./CPipe.h"

#include <iostream>
#include <list>

class CSector
{
public:
    CSector();
    //~CSector();
    virtual ~CSector(void){};
    // CSector(unsigned int i, CEstate e, float w) : m_id(i), m_estate(e), m_water_demand(w), m_description("Hola"){};
    CSector(unsigned int i, CEstate e, float w);
    // Draws Sector on IMGUI
    void draw()
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

private:
    unsigned int m_id;
    std::string m_description;
    CEstate m_estate;
    float m_water_demand;
    // std::vector<CPipe> m_Pipes;
    //  std::vector<boost::shared_ptr<CPipe>> m_Pipes;		 // Pipes that arrive to that node
    // std::vector<boost::shared_ptr<CSensor>> m_Sensors;	 // Sensor at the node
    //  std::vector<boost::shared_ptr<CActuator>> m_Actuators; // Sensor at the node

    // Structure with gui data
    struct
    {
        bool m_editing_water_demand = false;
        int Nodeid; // id of input at imnodes

    } m_gui_data;

    friend class CPipe; // To access m_id
    // Friend funtion to get a Sector by an id
    friend CSector *getSectorById(unsigned int id, std::list<CSector *> &sectors);
};

CSector *getSectorById(unsigned int id, std::list<CSector *> &sectors);
