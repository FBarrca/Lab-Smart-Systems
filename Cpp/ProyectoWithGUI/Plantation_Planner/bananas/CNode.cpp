#pragma once
#include "../imgui.h"
#include "../imnodes/imnodes.h"

#include "CNode.h"


CNode::CNode(int id, int guiId, std::string desc)
{
    m_id = id;
    m_gui_data.guiId = guiId;
    m_description = desc;
    m_gui_data.leftId = id * 2;
    m_gui_data.rightId = id * 3;

    m_gui_data.pos.x = 0;
    m_gui_data.pos.y = 0;
}

CNode::CNode(int id)
{
    m_id = id;
}
CNode::CNode(int id, std::string desc)
{
    m_id = id;
    m_description = desc;
}
CNode::CNode()
{
}

bool CNode::addActuator(std::shared_ptr<CActuator> a)
{
    m_actuators.push_back(a);
    return true;
}

bool CNode::addSensor(std::shared_ptr<CSensor> s)
{
    m_sensors.push_back(s);
    return true;
}

unsigned int CNode::getId()
{
    return m_id;
}

std::list<std::shared_ptr<CActuator>> CNode::getActuatorbyType(std::string type)
{
    std::list<std::shared_ptr<CActuator>> act_of_type;
    for (std::shared_ptr<CActuator> act : m_actuators) {

        if (act.get()->m_getType().getDesc() == type)
            act_of_type.push_back(act);
    }
    return act_of_type;
}

unsigned int CNode::getGUIId()
{
    return m_gui_data.guiId;
}

ImVec2 CNode::getPos()
{
    return m_gui_data.pos;
}


void CNode::drawHeader()
{
    ImNodes::PushColorStyle(
        ImNodesCol_TitleBar, m_gui_data.color);
    ImNodes::PushColorStyle(
        ImNodesCol_TitleBarSelected, IM_COL32(17, 149, 17, 255));
    ImNodes::BeginNode(m_gui_data.guiId);
    ImNodes::BeginNodeTitleBar();
    ImGui::Text("%s  (ID %d)", this->m_description.c_str(), m_id);
    //Connections
    ImNodes::EndNodeTitleBar();
    
}

void CNode::drawConnections()
{
    ImNodes::BeginInputAttribute(m_gui_data.leftId);
    ImGui::SameLine();
    ImNodes::EndInputAttribute();
    ImNodes::BeginOutputAttribute(m_gui_data.rightId);
    ImGui::SameLine();
    ImNodes::EndOutputAttribute();
}

void CNode::drawFooter() {
    ImNodes::EndNode();
    ImNodes::PopColorStyle();
    ImNodes::PopColorStyle();
}

void CNode::drawDevices() {
    int openSize = m_gui_data.NodeClosedHeight;
    openSize = m_gui_data.treeOpenSensors ? openSize + 2 * 20 * m_sensors.size() : openSize;
    openSize = m_gui_data.treeOpenActuators ? openSize + 2 * 20 * m_actuators.size() : openSize;
    openSize = openSize > m_gui_data.NodeMaxHeight ? m_gui_data.NodeMaxHeight : openSize;

    ImGui::BeginChild(("Devices"+ std::to_string(m_gui_data.guiId)).c_str(), ImVec2(m_gui_data.NodeWidth, openSize), true);
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
}

void CNode::draw()
{
    drawHeader();
    drawConnections();
    drawDevices();
    drawFooter();
}
