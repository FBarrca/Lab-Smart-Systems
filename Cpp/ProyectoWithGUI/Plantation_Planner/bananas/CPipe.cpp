#include "CPipe.h"

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
    m_gui_data.fromNodeId = id * PIPE_OFFSET  +1;
    m_gui_data.toNodeid = id * PIPE_OFFSET  +2;
    m_gui_data.pipeId = id * PIPE_OFFSET;
}

CPipe::~CPipe()
{
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
    ImNodes::BeginInputAttribute(m_gui_data.fromNodeId);
    ImGui::Text("From");
    ImNodes::EndInputAttribute();

    ImNodes::BeginOutputAttribute(m_gui_data.toNodeid);
    ImGui::Text("To");
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
    std::vector<std::pair<int, int>> links;
    //Debug
    //std::cout << "From PIPE" << m_gui_data.fromNodeId << "to Sector" << m_fromSector->m_gui_data.Nodeid << std::endl;
    links.push_back({m_gui_data.fromNodeId, m_fromSector->m_gui_data.Nodeid});
    links.push_back({m_gui_data.toNodeid, m_toSector->m_gui_data.Nodeid});
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
