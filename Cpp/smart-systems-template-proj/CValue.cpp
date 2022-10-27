#ifdef _MSC_VER
#define _CRT_SECURE_NO_WARNINGS
#endif
#include "CValue.h"
#include <iostream>
#include <ctime>
using namespace std;
CValue::CValue()
{
	m_date = time(0);// get the current datetime
	m_value = 0;
	cout << "Default creation" << endl;
}

CValue::CValue(double d_value, time_t time)
{
	m_value = d_value;
	m_date = time;
	cout << "I have been created with val = " << m_value << " at date = " << m_date << endl;
}

CValue::CValue(const CValue& C)
{
	cout << "Constructor copia: Se crea un defalult" << endl;
	*this = C;
	cout << "I have been copied with val = " << m_value << " at date = " << m_date << endl;
}

CValue::~CValue()
{
	cout << "I have been deleted  val = " << m_value << " at date = " << m_date << endl;

}

double CValue::getValue() const
{
	return m_value;
}

time_t CValue::getDate() const
{
	return m_date;
}
void CValue::operator=(const CValue& c) { //Operator = overloaded
	cout << "Operator= Tenia:" << m_value << " at date = " << m_date << endl;
	this->m_date = c.m_date;
	this->m_value = c.m_value;
	cout << "Ahora es: " << c.m_value << " at date = " << c.m_date << endl;

}
void CValue::operator+=(const CValue& c) { //Operator = overloaded
	cout << "Operator+= Tenia:" << m_value << " at date = " << m_date << endl;
	this->m_date = c.m_date;
	this->m_value += c.m_value;
	cout << " Ahora es: " << this->m_value << " at date = " << this->m_date << endl;

}
CValue CValue::operator+(const CValue& c) { //Operator = overloaded
	cout << "Operator+ 1Param Suma:" << this->m_value << " at date = " << this->m_date;
	cout << " y : " << c.m_value << " at date = " << c.m_date << endl;

	this->m_date = c.m_date;
	this->m_value += c.m_value;
	cout << " Ahora es: " << this->m_value << " at date = " << this->m_date << endl;
	return *this;
}
CValue operator+(const CValue& c1, const CValue& c2)
{
	cout << "Operator+ 2Param Suma:" << c1.m_value << " at date = " << c1.m_date;
	cout << " y : " << c2.m_value << " at date = " << c2.m_date << endl;

	CValue t;
	t.m_date = c2.m_date;
	t.m_value = c1.m_value + c2.m_value;
	cout << " Resultado es: " << t.m_value << " at date = " << t.m_date << endl;
	return t;
}

ostream& operator<<(ostream& o, const CValue& c) {
	o << c.getValue() << " " << c.getDate() << std::endl;
	return o;
}
std::istream& operator>>(std::istream& i, CValue& c) {
	i >> c.m_value >> c.m_date;
	return i;

}
