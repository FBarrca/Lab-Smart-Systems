#pragma once
#include <string>



class CActType
{
public:
	CActType();
	CActType(bool sw, int m_id_type, std::string description, std::string location_type) : m_isSwitch(sw),  m_id_type(m_id_type), description(description), location_type(location_type) {};
	~CActType();
	std::string getLoc() {
		return location_type; // returns 0 if pipe type 1 if node type
	};

private:
	bool m_isSwitch;
	int m_id_type;
	std::string description;
	std::string location_type;
};

