#include "CPipe.h"
#include "../imgui.h"

#define PIPE_OFFSET 10000000

CPipe::CPipe()
{
}

CPipe::CPipe(int id, std::shared_ptr<CSector> from, std::shared_ptr<CSector> to)
{
    m_id = id;
    m_description = "Pipe" + std::to_string(id);
    //

    m_fromSector = from;
    m_toSector = to;

    m_gui_data.hasLeak = false;
    m_gui_data.leftId = id * PIPE_OFFSET + 1;
    m_gui_data.rightId = id * PIPE_OFFSET + 2;
    m_gui_data.pipeId = id * PIPE_OFFSET;

    m_gui_data.pos.x = 0;
    m_gui_data.pos.y = 0;
}

CPipe::~CPipe()
{
}
unsigned int CPipe::get_GUIPipeId()
{
    return m_gui_data.pipeId;
}

ImVec2 CPipe::getInitialPos()
{
    return m_gui_data.pos;
}

std::list<std::shared_ptr<CActuator>> CPipe::getActuatorbyType(std::string type)
{
    std::list<std::shared_ptr<CActuator>> act_of_type;
    for (std::shared_ptr<CActuator> act : m_actuators) {

        if (act.get()->m_getType().getDesc() == type)
            act_of_type.push_back(act);
    }
    return act_of_type;
}



bool CPipe::addActuator(std::shared_ptr<CActuator> a)
{
    m_actuators.push_back(a);
    return true;
}
void CPipe::draw()
{

    //rgb(255, 178, 47)
    ImNodes::PushColorStyle(
        ImNodesCol_TitleBar, m_gui_data.hasLeak ? IM_COL32(255, 178, 47, 255)  : IM_COL32(16, 124, 16, 255));
    ImNodes::PushColorStyle(
        ImNodesCol_TitleBarSelected, IM_COL32(17, 149, 17, 255));
    ImNodes::BeginNode(m_id * PIPE_OFFSET);
    ImNodes::BeginNodeTitleBar();
    ImGui::Text("%s  (ID %d)", this->m_description.c_str(), m_id);

    ImNodes::EndNodeTitleBar();
    ImNodes::BeginInputAttribute(m_gui_data.leftId);
    ImGui::SameLine();
    ImNodes::EndInputAttribute();

    ImNodes::BeginOutputAttribute(m_gui_data.rightId);
    ImGui::SameLine();
    ImNodes::EndOutputAttribute();
    int openSize = 35;
    openSize = m_gui_data.treeOpenSensors ? openSize + 2 * 20 * m_sensors.size() : openSize;
    openSize = m_gui_data.treeOpenActuators ? openSize + 2 * 20 * m_actuators.size() : openSize;
    openSize = openSize > 300 ? 300 : openSize;
    
    ImGui::BeginChild(("S&A Pipe" + std::to_string(m_id)).c_str(), ImVec2(200, openSize), true);
    m_gui_data.treeOpenSensors =false;
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
        for(std::shared_ptr<CActuator> act : m_actuators)
        {
            act.get()->draw();
        }
        ImGui::TreePop();
    }
    ImGui::EndChild();

    ImNodes::EndNode();
    ImNodes::PopColorStyle();
    ImNodes::PopColorStyle();

    // Decide if to place line on right or left

    std::vector<std::pair<int, int>> links;

    ImVec2 pipe_pos = ImNodes::GetNodeGridSpacePos(m_gui_data.pipeId);
    ImVec2 from_pos = ImNodes::GetNodeGridSpacePos(m_fromSector.get()->m_id);
    ImVec2 to_pos = ImNodes::GetNodeGridSpacePos(m_toSector.get()->m_id);

    m_gui_data.pos = pipe_pos; // Update position
    if (((float)pipe_pos.x - from_pos.x) > 0)
        links.push_back({m_gui_data.leftId, m_fromSector.get()->m_gui_data.rightId});
    else
        links.push_back({m_gui_data.rightId, m_fromSector.get()->m_gui_data.leftId});
    if (((float)pipe_pos.x - to_pos.x) > 0)
        links.push_back({m_gui_data.leftId, m_toSector.get()->m_gui_data.rightId});
    else
        links.push_back({m_gui_data.rightId, m_toSector.get()->m_gui_data.leftId});

    // elsewhere in the code...
    for (int i = 0; i < links.size(); ++i)
    {
        const std::pair<int, int> p = links[i];
        // in this case, we just use the array index of the link
        // as the unique identifier
        ImNodes::Link(i + m_id * PIPE_OFFSET, p.first, p.second);
    }
    links.clear();
}
void CPipe::hasLeak(bool s)
{
    m_gui_data.hasLeak = s;
}
unsigned int CPipe::getId()
{
    return m_id;
}
std::shared_ptr<CSector> CPipe::otherSector(std::shared_ptr<CSector> sector)
{
    if (m_fromSector == sector)
        return m_toSector;
    else if (m_toSector == sector)
        return m_fromSector;
    else
        return nullptr;
}
bool CPipe::addSensor(std::shared_ptr<CSensor> s)
{
    m_sensors.push_back(s);
    return true;
}
;
void CPipe::setPipeInGrid()
{
    // Small random offset to avoid overlapping between -50 and 50
    int offsetx = rand() % 100 - 50;
    int offsety = rand() % 100 - 50;

    float middlePointx = (m_fromSector->m_gui_data.initialPos.x - m_toSector->m_gui_data.initialPos.x) / 2 + m_toSector->m_gui_data.initialPos.x + offsetx;
    float middlePointy = (m_fromSector->m_gui_data.initialPos.y - m_toSector->m_gui_data.initialPos.y) / 2 + m_toSector->m_gui_data.initialPos.y + offsety;
    m_gui_data.pos = ImVec2(middlePointx, middlePointy);
}

bool findwithSector(std::shared_ptr<CSector> s, std::list<std::shared_ptr<CPipe>>& v_PipesToSector, std::list<std::shared_ptr<CPipe>> v_Pipes)
{
    for (std::shared_ptr<CPipe> p : v_Pipes)
    {
        if (p.get()->m_fromSector == s || p.get()->m_toSector == s)
        {
            v_PipesToSector.push_back(p);
        }
    }
    return !v_PipesToSector.empty();
}