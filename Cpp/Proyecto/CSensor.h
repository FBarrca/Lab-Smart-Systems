#pragma once
#include <String>
class CSensor
{
};


class CSensType
{
public:
	CSensType();
	~CSensType();

private:
	bool m_isSwitch;
	std::string description; //name of type

};

