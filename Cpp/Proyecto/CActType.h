#pragma once
#include <string>
#include<boost/variant.hpp>

/*
* This implementation of classes can work in two ways either as to tables or one.
* When ever you create although it is VERY important that when you create the class
* you typecast the m_TypeID to the appropiate type to avoid bugs.
*/
typedef enum {
	WATER_VALVE
}PipeActType;
typedef enum {
	PUMP,
	NUTRITION_VALVE
}NodeActType;

class CActType
{
public:
	CActType();
	CActType(boost::variant<PipeActType, NodeActType> t, std::string desc, bool sw) : m_TypeID(t), m_description(desc), m_isSwitch(sw) {};
	~CActType();
	int getLoc() {
		return m_TypeID.which(); // returns 0 if pipe type 1 if node type
	};

private:
	bool m_isSwitch;
	std::string m_description; //name of type
	boost::variant<PipeActType, NodeActType> m_TypeID;
};

