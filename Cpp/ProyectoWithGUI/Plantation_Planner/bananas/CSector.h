#pragma once
#include "CEstate.h"
#include <string>
#include "../imgui.h"
#include "../imnodes/imnodes.h"
#include "CSensor.h"
#include "CActuator.h"

#include <iostream>
#include <list>

class CSector
{
public:
    CSector();
    virtual ~CSector(void){};
    CSector(unsigned int i, CEstate e, float w);

    // GETTERS
    unsigned int get_id() const;

    // INTELLIGENCE
    // Finds if the pressure of the sector is too low
    bool DropInPressure(float min_preass);

    // GUI Functions
    void draw();
    void setPos(ImVec2 pos);

    // SENSORS ANDACTUATORS
    bool addSensor(std::shared_ptr<CSensor> s);
    bool addActuator(std::shared_ptr<CActuator> a);


private:
    unsigned int m_id;
    std::string m_description;
    CEstate m_estate;
    float m_water_demand;


    std::vector<std::shared_ptr<CSensor>> m_sensors;	 // Sensor at the node
    std::vector<std::shared_ptr<CActuator>> m_actuators; // Sensor at the node

    // Structure with gui data
    struct
    {
        bool m_editing_water_demand = false;
        int leftId;  // id of input at imnodes
        int rightId; // id of output at imnodes
        ImVec2 initialPos = ImVec2(0, 0);
        bool treeOpenSensors = false;
        bool treeOpenActuators = false;
        bool hasDropPress = false;
    } m_gui_data;

    friend class CPipe; // To access m_id
    // Friend funtion to get a Sector by an id
    friend std::shared_ptr<CSector> getSectorById(unsigned int id, std::list<std::shared_ptr<CSector>> &sectors);
};

std::shared_ptr<CSector> getSectorById(unsigned int id, std::list<std::shared_ptr<CSector>> &sectors);

ImVec2 setSectorInGrid(unsigned int id, unsigned int w);