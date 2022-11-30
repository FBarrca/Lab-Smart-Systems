#include "../implot/implot.h"
#include "CActuator.h"
#include "CValue.h"
#include "CDatabaseBanana.h"

CActuator::CActuator()
{
}

void CActuator::addValue(std::shared_ptr<CValue>& v)
{
	m_vect_values.push_back(v);
}

void CActuator::addValue(std::list<std::shared_ptr<CValue>>& v)
{
	for (std::shared_ptr<CValue> itr : v) {
		m_vect_values.push_back(itr);
	}
}

void CActuator::draw()
{

	ImGui::Text("%s %d", m_type.getDesc(), m_ID);
	ImGui::SameLine();
	//if (ImGui::Button(strcat(button_name, id_string))) {
	if (ImGui::Button(("Graph##GraphAct" + std::to_string(m_ID)).c_str())) {

		ImGui::OpenPopup(("Graph View Actuator " + m_type.getDesc() + " " + std::to_string(m_ID) + "##GraphViewAct" + std::to_string(m_ID)).c_str());
	}
	if (m_vect_values.empty()) {
		ImGui::Text("==> Value: No data");
	}
	else {
		//Not empty

		if (m_type.getIsSwitch()) {
			//Is Switch
			bool currentValue = 0;
			ImGui::Text(u8"==> Value: %.0f", m_vect_values.back().get()->getValue());
			ImGui::SameLine();
			if (!m_vect_values.empty())currentValue = (bool)m_vect_values.back().get()->getValue();
			std::string button_label = currentValue ? "Close" : "Open";
			std::string button_id = "##ButtonActuate" + std::to_string(m_ID);
			button_label += button_id;
			if (ImGui::Button(button_label.c_str()))
			{
				CDatabaseBanana dbObject;
				dbObject.Conectar(SCHEMA_NAME, HOST_NAME, USER_NAME, PASSWORD_USER);
				dbObject.ComienzaTransaccion();
				if (dbObject.setActuator(!currentValue, this)) {
					std::shared_ptr<CValue> value = std::make_shared<CValue>(!currentValue, time(0));
					m_vect_values.push_back(value);
				};
				dbObject.ConfirmarTransaccion();
				dbObject.Desconectar();
			}
		}
		else {
			//Isnt a switch (not yet implemented or tested )
			static float act, ant;
			ImGui::InputFloat("Water Demand", &act, 0.1f, 1.0f, "%.1f", ImGuiInputTextFlags_EnterReturnsTrue);
			if (act != ant) {
				//Update database
				CDatabaseBanana dbObject;
				dbObject.Conectar(SCHEMA_NAME, HOST_NAME, USER_NAME, PASSWORD_USER);
				dbObject.ComienzaTransaccion();
				if (dbObject.setActuator(act, this)) {
					std::shared_ptr<CValue> value = std::make_shared<CValue>(act,(float)ImGui::GetTime());
					m_vect_values.push_back(value);
				};
				dbObject.ConfirmarTransaccion();
				dbObject.Desconectar();
			}
			ant = act;
		}
	}
	// PopUp of Actuator
	if (ImGui::BeginPopupModal(("Graph View Actuator " + m_type.getDesc() + " " + std::to_string(m_ID) + "##GraphViewAct" + std::to_string(m_ID)).c_str(), NULL, NULL))
	{
		ImGui::SetWindowSize(ImVec2(ImGui::GetIO().DisplaySize.x * 0.8f, ImGui::GetIO().DisplaySize.y * 0.55f));
		static float x[9999];
		static float y[9999];
		int i = 0;
		float xmax = 0;
		float xmin = 9999999999999999999;
		float ymax = 0;
		float ymin = 9999999999999999999;
		for (auto value : m_vect_values) {

			y[i] = value.get()->getValue();
			x[i] = value.get()->getDate();
			if (x[i] > xmax) { xmax = x[i]; }
			if (y[i] > ymax) { ymax = y[i]; }
			if (x[i] < xmin) { xmin = x[i]; }
			if (y[i] < ymin) { ymin = y[i]; }
			i++;
		}
		//Give vertical axis title of BAR
		ImPlot::BeginPlot(("Actuator " + m_type.getDesc() + " " + std::to_string(m_ID) + "##GraphViewAct" + std::to_string(m_ID)).c_str());
		ImPlot::SetupAxisScale(ImAxis_X1, ImPlotScale_Time ); 
		ImPlot::SetupAxisLimits(ImAxis_X1, xmax-300,xmax+10);
		// ImPlot::SetupAxisLimits(ImAxis_Y1, 0, 1);
		// ImPlot::SetNextMarkerStyle(ImPlotMarker_Circle);
		// ImPlot::PlotStems("", x, y, i-1);
		//ImPlot::PlotBars("", x, y,i,1);
		ImPlot::PlotDigital("", x, y, i);
		ImPlot::EndPlot();
		//Centered close button
		ImGui::SetCursorPosX((ImGui::GetWindowSize().x - 80) / 2);
		if (ImGui::Button("Close", ImVec2(80, 0))) { ImGui::CloseCurrentPopup(); }

		ImGui::Text("    ");
		i = m_vect_values.size();
		ImGui::EndPopup();
	}
}

CActuator::~CActuator()
{
}


