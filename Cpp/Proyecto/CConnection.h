#pragma once
#include "CNode.h"
#include "CPipe.h"

class CConnection
{
private:
    boost::shared_ptr<CNode> m_node1;
    boost::shared_ptr<CNode> m_node2;
    boost::shared_ptr<CPipe> m_pipe;
};
