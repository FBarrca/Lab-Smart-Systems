#include "CSector.h"
#include "CDatabaseBanana.h"
#include <iostream>

#define OFFSETCONNECTION 1000

CSector::CSector() : m_id(99), m_estate(CEstate(0, 0)), m_water_demand(0)
{
    m_gui_data.leftId = m_id * OFFSETCONNECTION + 1;
    m_gui_data.rightId = m_id * OFFSETCONNECTION + 2;
}

CSector::CSector(unsigned int i, CEstate e, float w)
{
    m_id = i;
    m_estate = e;
    m_water_demand = w;

    m_gui_data.leftId = m_id * OFFSETCONNECTION + 1;
    m_gui_data.rightId = m_id * OFFSETCONNECTION + 2;
}

// CSector::~CSector() {}
unsigned int CSector::get_id() const
{
    return m_id;
}
bool CSector::DropInPressure(float min_preass) //Slope of the decay
{
    // Get all sensors of type pressure of the sector

      for (std::shared_ptr<CSensor> sensor : m_sensors)
      {
          if (sensor.get()->getType() == "Pressure")
          {
              //Get the value of the sensor
              std::list<std::shared_ptr<CValue>> last_values = sensor.get()->getLastnValue(4);
              std::shared_ptr<CValue> lastValue = last_values.front();
              std::shared_ptr<CValue> baseValue = last_values.back();
               
              int min_slope = -5;

               int slope = (lastValue.get()->getValue() - baseValue.get()->getValue()) / (lastValue.get()->getDate() - baseValue.get()->getDate());

                if (slope < min_preass)
                {
                    m_gui_data.hasDropPress = true;
                    return true;
                }
          }
      }
      m_gui_data.hasDropPress = false;
    return false;
}
void CSector::setPos(ImVec2 pos)
{
    m_gui_data.initialPos = pos;
}

bool CSector::addSensor(std::shared_ptr<CSensor> s)
{
    m_sensors.push_back(s);
    return true;
}

bool CSector::addActuator(std::shared_ptr<CActuator> a)
{
    m_actuators.push_back(a);
    return true;
}

void CSector::draw()
{
    
    ImNodes::PushColorStyle(
        ImNodesCol_TitleBar, m_gui_data.hasDropPress ? IM_COL32(255, 178, 47, 255) : IM_COL32(202, 81, 0, 255));
    ImNodes::BeginNode(this->m_id);
    ImNodes::BeginNodeTitleBar();
    ImGui::Text("%s  (ID %d)", m_description.c_str(), m_id);
    ImNodes::EndNodeTitleBar();
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
            CDatabaseBanana dbObject;
            dbObject.Conectar(SCHEMA_NAME, HOST_NAME, USER_NAME, PASSWORD_USER);
            dbObject.ComienzaTransaccion();
            //UPDATE WATERDEMAND
            dbObject.updateWaterdemand(m_water_demand, this);
            dbObject.ConfirmarTransaccion();
            dbObject.Desconectar();
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

    ImNodes::BeginInputAttribute(m_gui_data.leftId);
    ImGui::SameLine();
    ImNodes::EndInputAttribute();
    ImNodes::BeginOutputAttribute(m_gui_data.rightId);
    ImGui::SameLine();
    ImNodes::EndOutputAttribute();

    int openSize = 35;
    openSize = m_gui_data.treeOpenSensors ? openSize + 2 * 20 * m_sensors.size() : openSize;
    openSize = m_gui_data.treeOpenActuators ? openSize + 2 * 20 * m_actuators.size() : openSize;
    openSize = openSize > 250 ? 250 : openSize;

    ImGui::BeginChild(("S&A Sector" + std::to_string(m_id)).c_str(), ImVec2(220, openSize), true);
    m_gui_data.treeOpenSensors = false;
    if (ImGui::TreeNode("Sensors"))
    {
        m_gui_data.treeOpenSensors = true;
        for (std::shared_ptr<CSensor> sens : m_sensors)
        {
            sens.get()->draw();
        }
        ImGui::TreePop();
    }
    m_gui_data.treeOpenActuators = false;
    if (ImGui::TreeNode("Actuators"))
    {
        m_gui_data.treeOpenActuators = true;
        for (std::shared_ptr<CActuator> act : m_actuators)
        {
            act.get()->draw();
        }
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

ImVec2 setSectorInGrid(unsigned int id, unsigned int w)
{
    int j = id - 1;
    int distance = 500;
    int x = (j % w) * distance;
    int y = (j / w) * distance;
    return ImVec2(x, y);
}
