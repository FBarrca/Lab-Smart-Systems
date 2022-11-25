#include "CPipe.h"
#include "../imgui.h"

#define PIPE_OFFSET 10000000


CPipe::CPipe(int id, std::shared_ptr<CSector> from, std::shared_ptr<CSector> to):CNode(id)
{
    m_id = id;
    m_description = "Pipe " + std::to_string(id);
    m_fromSector = from;
    m_toSector = to;
    m_gui_data.hasLeak = false;
    m_gui_data.leftId = id * PIPE_OFFSET + 1;
    m_gui_data.rightId = id * PIPE_OFFSET + 2;
    m_gui_data.guiId = id * PIPE_OFFSET;
    m_gui_data.color = IM_COL32(16, 124, 16, 255);
}

CPipe::~CPipe()
{
}


void CPipe::draw()
{   //drawHeader and Connections not working for some reason
    ImNodes::PushColorStyle(
        ImNodesCol_TitleBar, IM_COL32(16, 124, 16, 255));
    ImNodes::PushColorStyle(
        ImNodesCol_TitleBarSelected, IM_COL32(17, 149, 17, 255));
    ImNodes::BeginNode(m_id * PIPE_OFFSET);
    ImNodes::BeginNodeTitleBar();
    //ImGui::Text("Pipe %d", this->m_id);
    ImGui::Text("%s  (ID %d)", this->m_description.c_str(), m_id);

    ImNodes::EndNodeTitleBar();
    ImNodes::BeginInputAttribute(m_gui_data.leftId);
    ImGui::SameLine();
    ImNodes::EndInputAttribute();

    ImNodes::BeginOutputAttribute(m_gui_data.rightId);
    ImGui::SameLine();
    ImNodes::EndOutputAttribute();
    
    drawDevices();

    drawFooter();

    // Decide if to place line on right or left
    drawConnectToNode();
}

void CPipe::hasLeak(bool s)
{
    m_gui_data.hasLeak = s;
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

void CPipe::drawConnectToNode()
{

    std::vector<std::pair<int, int>> links;

    ImVec2 pipe_pos = ImNodes::GetNodeGridSpacePos(m_gui_data.guiId);
    ImVec2 from_pos = ImNodes::GetNodeGridSpacePos(m_fromSector.get()->m_id);
    ImVec2 to_pos = ImNodes::GetNodeGridSpacePos(m_toSector.get()->m_id);

    m_gui_data.pos = pipe_pos; // Update position
    if (((float)pipe_pos.x - from_pos.x) > 0)
        links.push_back({ m_gui_data.leftId, m_fromSector.get()->m_gui_data.rightId });
    else
        links.push_back({ m_gui_data.rightId, m_fromSector.get()->m_gui_data.leftId });
    if (((float)pipe_pos.x - to_pos.x) > 0)
        links.push_back({ m_gui_data.leftId, m_toSector.get()->m_gui_data.rightId });
    else
        links.push_back({ m_gui_data.rightId, m_toSector.get()->m_gui_data.leftId });

    for (int i = 0; i < links.size(); ++i)
    {
        const std::pair<int, int> p = links[i];
        // in this case, we just use the array index of the link
        // as the unique identifier
        ImNodes::Link(i + m_id * PIPE_OFFSET, p.first, p.second);
    }
    links.clear();
}

void CPipe::setPipeInGrid()
{
    // Small random offset to avoid overlapping between -50 and 50
    int offsetx = rand() % 100 - 50;
    int offsety = rand() % 100 - 50;
    std::cout << m_fromSector.get()->m_gui_data.pos.x << std::endl;
    float middlePointx = (m_fromSector.get()->m_gui_data.pos.x - m_toSector.get()->m_gui_data.pos.x) / 2 + m_toSector.get()->m_gui_data.pos.x + offsetx;
    float middlePointy = (m_fromSector.get()->m_gui_data.pos.y - m_toSector.get()->m_gui_data.pos.y) / 2 + m_toSector.get()->m_gui_data.pos.y + offsety;
    m_gui_data.pos = ImVec2(middlePointx, middlePointy);
}

bool findwithSector(std::shared_ptr<CSector> s, std::list<std::shared_ptr<CPipe>> v_PipesToSector, std::list<std::shared_ptr<CPipe>> v_Pipes)
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