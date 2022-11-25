#pragma once
#include "../imgui.h"

//#include "CDatabaseBanana.h"
#include "CSector.h"
#include "CPipe.h"
#include "CSensor.h"
//#include "CActuator.h"
#include <vector>
#include <string>
#include <boost/variant.hpp>

#include "./CActuator.h"

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

	bool addActuator(std::shared_ptr<CActuator> a);
	bool addSensor(std::shared_ptr<CSensor> s);


	std::list<std::shared_ptr<CActuator>> getActuatorbyType(std::string type);
	void draw();
	void hasLeak(bool s);
	unsigned int getId();
	std::shared_ptr<CSector> otherSector(std::shared_ptr<CSector> sector);

	// GUI Functions
	unsigned int get_GUIPipeId();
	ImVec2 getInitialPos();
	void setPipeInGrid();

private:
	unsigned int m_id;
	std::string m_description;
	std::shared_ptr<CSector> m_fromSector;
	std::shared_ptr<CSector> m_toSector;

	std::list<std::shared_ptr<CActuator>> m_actuators;
	std::list<std::shared_ptr<CSensor>> m_sensors;
	struct
	{
		bool hasLeak;
		int leftId;	 // id if imnodes input
		int rightId; // id of imnodes output
		int pipeId;
		ImVec2 pos;
		bool treeOpenSensors;
		bool treeOpenActuators;
	} m_gui_data;
	friend bool findwithSector(std::shared_ptr<CSector> s, std::list<std::shared_ptr<CPipe>> v_PipesToSector, std::list<std::shared_ptr<CPipe>> v_Pipes);
};

bool findwithSector(std::shared_ptr<CSector> s, std::list<std::shared_ptr<CPipe>> v_PipesToSector, std::list<std::shared_ptr<CPipe>> v_Pipes);