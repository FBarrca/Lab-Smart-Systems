#pragma once
#include "../imgui.h"


#include <vector>
#include <string>
#include <memory>

#include "CActuator.h"
#include "CSensor.h"


class CNode
{
public:
	CNode();
	CNode(int id);
	CNode(int id, int guiId);
	CNode(int id, std::string desc);
	CNode(int id, int guiId, std::string desc);

	bool addActuator(std::shared_ptr<CActuator> a);
	bool addSensor(std::shared_ptr<CSensor> s);

	unsigned int getId();
	std::list<std::shared_ptr<CActuator>> getActuatorbyType(std::string type);
	
	
	// GUI Functions
	unsigned int getGUIId();
	ImVec2 getPos();
	virtual void draw();

protected:
	void drawHeader();
	void drawFooter();
	void drawConnections();
	void drawDevices();
	

	unsigned int m_id;
	std::string m_description;

	std::list<std::shared_ptr<CActuator>> m_actuators;
	std::list<std::shared_ptr<CSensor>> m_sensors;
	struct BasicGuiData
	{
		bool hasLeak;
		int leftId;	 // id if imnodes input
		int rightId; // id of imnodes output
		int guiId =1;
		ImVec2 pos;
		bool treeOpenSensors;
		bool treeOpenActuators;
		unsigned int color = IM_COL32(16, 124, 16, 255);
		int NodeWidth = 200;
		int NodeClosedHeight = 35;
		int NodeMaxHeight = 250;
	} m_gui_data;
};