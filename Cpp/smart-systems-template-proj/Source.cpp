#include <iostream>
#include <ctime>
#include "CValue.h"
#include "./src/helpers/CTimeUtils.hpp"
int main(void)
{
	helpers::CTimeUtils ctu;
	time_t time = ctu.getTimeTFromYMDHMS(2022, 10, 26, 3, 2, 3);
	CValue value(15.5, time);
	std::cout << "value=" << value.getValue() << std::endl;
	return 0;
}