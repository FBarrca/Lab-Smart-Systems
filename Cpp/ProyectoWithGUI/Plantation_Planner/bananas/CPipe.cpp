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
    m_gui_data.fromNodeId = id * PIPE_OFFSET * +1;
    m_gui_data.toNodeid = id * PIPE_OFFSET * +2;
}

CPipe::~CPipe()
{
}

void CPipe::draw()
{
    ImNodes::PushColorStyle(
        ImNodesCol_TitleBar, IM_COL32(202, 81, 0, 255));
    // int nodeid = OFFSETPIPEID * m_id;

    ImNodes::BeginNode(m_id * 100000);
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

    ImNodes::EndNode();

    std::vector<std::pair<int, int>> links;

    links.push_back({m_gui_data.fromNodeId, m_fromSector->m_gui_data.Nodeid});
    links.push_back({m_gui_data.toNodeid, m_toSector->m_gui_data.Nodeid});
    // elsewhere in the code...
    for (int i = 0; i < links.size(); ++i)
    {
        const std::pair<int, int> p = links[i];
        // in this case, we just use the array index of the link
        // as the unique identifier
        ImNodes::Link(i, p.first, p.second);
    }
};
