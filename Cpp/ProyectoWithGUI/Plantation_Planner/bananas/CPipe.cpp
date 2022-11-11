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
void CPipe::draw()
{
    ImNodes::PushColorStyle(
        ImNodesCol_TitleBar, IM_COL32(16, 124, 16, 255));
    ImNodes::PushColorStyle(
        ImNodesCol_TitleBarSelected, IM_COL32(17, 149, 17, 255));
    ImNodes::BeginNode(m_id * PIPE_OFFSET);
    ImNodes::BeginNodeTitleBar();
    ImGui::Text("Pipe %d", this->m_id);
    ImNodes::EndNodeTitleBar();

    ImGui::Text("Desc: %s", this->m_description.c_str());

    ImNodes::BeginInputAttribute(m_gui_data.leftId);
    ImGui::Text("Connections");
    ImGui::SameLine();
    ImNodes::EndInputAttribute();

    ImNodes::BeginOutputAttribute(m_gui_data.rightId);
    ImGui::SameLine();
    // ImGui::Text("To");
    ImNodes::EndOutputAttribute();
    char id_string[32];
    sprintf(id_string, "%d", m_id);
    char child_name[64] = "S&A Pipe";
    ImGui::BeginChild(strcat(child_name, id_string), ImVec2(100, 80), false);
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
};
void CPipe::setPipeInGrid()
{
    // Small random offset to avoid overlapping between -50 and 50
    int offsetx = rand() % 100 - 50;
    int offsety = rand() % 100 - 50;

    float middlePointx = (m_fromSector->m_gui_data.initialPos.x - m_toSector->m_gui_data.initialPos.x) / 2 + m_toSector->m_gui_data.initialPos.x + offsetx;
    float middlePointy = (m_fromSector->m_gui_data.initialPos.y - m_toSector->m_gui_data.initialPos.y) / 2 + m_toSector->m_gui_data.initialPos.y + offsety;
    m_gui_data.pos = ImVec2(middlePointx, middlePointy);
}