#pragma once
#include <iostream>
#include <ctime>
/**
* clase que representa el valor de una variable en una fecha dada
*/
class CValue
{
public:// accesible from outside
	// constructor and destructor 
	//default Connstructor
	CValue();
	//Parameterized Constructor
	CValue(double d_value, time_t time);
	// copy constructor (call by reference)
	CValue(const CValue& C);
	~CValue(); //destructor
	// functions for member access
	double getValue() const;
	time_t getDate() const;
	void operator=(const CValue& c);

	void operator+=(const CValue& c);
	CValue operator+(const CValue& c);
	CValue & operator+(const int& i);
	friend CValue operator+(const CValue& c1, const CValue& c2);

	friend std::ostream& operator<<(std::ostream& o, const CValue& c); //This function is not owned by the class, but it can access to the private part of the class
	friend std::istream& operator>>(std::istream& i, CValue& c); //This function is not owned by the class, but it can access to the private part of the class


private:// No-access from outside
	//A private member variable or function cannot be accessed, or even viewed from outside the class. Only the class and friend functions can access private members
	double m_value; /** Value*/
	time_t m_date;  /** Date */



};
