#pragma once
#include <string>



class CActType
{
public:
	CActType();
	CActType(bool sw, int id, std::string desc, std::string loc);
	~CActType();
	std::string getLoc() {
		return location_type; // returns 0 if pipe type 1 if node type
	};
	std::string getDesc() {
		return description;
	}

private:
	bool m_isSwitch;
	int m_id_type;
	std::string description;
	std::string location_type;
};

