#include "CActType.h"


CActType::CActType()
{
}

CActType::CActType(bool sw, int id, std::string desc, std::string loc)
{
	m_isSwitch = sw;
	m_id_type = id;
	description = desc;
	location_type = loc;
}

CActType::~CActType()
{
}
