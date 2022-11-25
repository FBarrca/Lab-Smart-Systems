#pragma once
#include "../imgui.h"

#include "CNode.h"
#include "CSector.h"
#include "CPipe.h"
#include "CSector.h"

#include "CSensor.h"
#include "CActuator.h"

#include <vector>
#include <string>
#include <boost/variant.hpp>


#define OFFSETPIPEID = 10000
#define OFFSETPIPEFROM = 100000
#define OFFSETPIPETO = 1000000

class CPipe : public CNode
{
public:
	CPipe(int id, std::shared_ptr<CSector> from, std::shared_ptr<CSector> to);
	~CPipe();

	void draw();
	void hasLeak(bool s);

	std::shared_ptr<CSector> otherSector(std::shared_ptr<CSector> sector);
	void drawConnectToNode();
	// GUI Functions
	void setPipeInGrid();

private:

	std::shared_ptr<CSector> m_fromSector;
	std::shared_ptr<CSector> m_toSector;
	struct Guidata: public BasicGuiData
	{	
		Guidata(){}
		bool hasLeak;
	} m_gui_data;
	friend bool findwithSector(std::shared_ptr<CSector> s, std::list<std::shared_ptr<CPipe>> v_PipesToSector, std::list<std::shared_ptr<CPipe>> v_Pipes);
};

bool findwithSector(std::shared_ptr<CSector> s, std::list<std::shared_ptr<CPipe>> v_PipesToSector, std::list<std::shared_ptr<CPipe>> v_Pipes);