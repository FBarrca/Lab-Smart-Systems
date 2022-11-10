#pragma once

#include "CSector.h"
#include "CPipe.h"
//#include "CSensor.h"
//#include "CActuator.h"
#include <vector>
#include <string>
#include <boost/variant.hpp>

#include "CSector.h"

#define OFFSETPIPEID = 10000
#define OFFSETPIPEFROM =  100000
#define OFFSETPIPETO =  1000000

class CPipe
{
public:
	CPipe(int id, CSector* from, CSector* to);
	CPipe();
	~CPipe();
	//bool addSensor(boost::shared_ptr<CSensor> s);
	
	//bool addActuator(boost::shared_ptr<CActuator> a);
	void draw();
	
private:
	unsigned int m_id;
	std::string m_description;
	CSector * m_fromSector;
	CSector * m_toSector;
	struct
	{
		bool hasLeak;
		int fromNodeId; // id if imnodes input
		int toNodeid; //id of imnodes output
	} m_gui_data;
};