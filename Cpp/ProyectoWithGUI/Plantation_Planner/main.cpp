
// CODE I HAVE BEEN USING TO TEST STUFF, PLEASE IGNORE

#include "CMeasurement.h"
#include "CSensor.h"
#include <vector>
#include <stdio.h>
#include <stdint.h>


int main()
{
	std::vector<CValue> value_vector;
	std::vector<CValue> value_vector2;
	std::vector<CValue> value_vector3;
	std::vector<CMeasurement*> measure_vector;
	std::vector<CMeasurement*> measure_vector_get;

	for (int i = 0; i < 5; i++)
	{
		CValue a(1, 1);
		value_vector.push_back(a);
	}

	for (int i = 0; i < 5; i++)
	{
		CValue a(2, 2);
		value_vector2.push_back(a);
	}

	CMeasurement measurement(value_vector);
	CMeasurement measurement2(value_vector2);

	//std::vector<CValue> value_vector3;
	
	measure_vector.push_back(&measurement);
	measure_vector.push_back(&measurement2);

	CSensor sensor(1, measure_vector);
	sensor.getValues(measure_vector_get);

	std::cout << measure_vector_get.size() << std::endl;

	std::vector<CMeasurement*>::iterator it;
	it = measure_vector_get.begin();
	for (int i = 0; i < measure_vector_get.size(); i++, it++)
	{
		(*it)->getValues(value_vector3);
		auto it2 = value_vector3.begin();
		for (int j = 0; j < value_vector3.size(); j++, it2++)
		{
			std::cout << it2->getValue() << std::endl;;
		}
	}

	//CSensor sensor(1);

}