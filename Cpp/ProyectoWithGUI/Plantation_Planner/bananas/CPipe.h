#pragma once
#include "../imgui.h"

#include "CSector.h"
#include "CPipe.h"
//#include "CSensor.h"
//#include "CActuator.h"
#include <vector>
#include <string>
#include <boost/variant.hpp>

#include "CSector.h"

#define OFFSETPIPEID = 10000
#define OFFSETPIPEFROM = 100000
#define OFFSETPIPETO = 1000000

class CPipe
{
public:
	CPipe(int id, std::shared_ptr<CSector> from, std::shared_ptr<CSector> to);
	CPipe();
	~CPipe();
	// bool addSensor(boost::shared_ptr<CSensor> s);

	// bool addActuator(boost::shared_ptr<CActuator> a);
	void draw();
	unsigned int get_GUIPipeId();
	ImVec2 getInitialPos();
	void setPipeInGrid();

private:
	unsigned int m_id;
	std::string m_description;
	std::shared_ptr<CSector> m_fromSector;
	std::shared_ptr<CSector> m_toSector;
	struct
	{
		bool hasLeak;
		int leftId;	 // id if imnodes input
		int rightId; // id of imnodes output
		int pipeId;
		ImVec2 pos;
	} m_gui_data;
};