#include "CActuator.h"
#include "bananas/CValue.h"

CActuator::CActuator()
{
}

void CActuator::addValue(std::vector<CValue*> values)
{
	for (auto &value : values) {
		(this->m_vect_values).push_back(value);
	}
}

CActuator::~CActuator()
{
}


