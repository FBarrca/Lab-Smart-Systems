#ifdef _MSC_VER
#define _CRT_SECURE_NO_WARNINGS
#endif
#include "bananas/CValue.h"
#include <iostream>
#include <ctime>
#include "bananas\CValue.h"

#define VERBOSE false;
using namespace std;
CValue::CValue()
{
	m_date = time(0);// get the current datetime
	m_value = 0;
#if VERBOSE
	cout << "Default creation" << endl;
#endif
}

CValue::CValue(double d_value, time_t time)
{
	m_value = d_value;
	m_date = time;
#if VERBOSE
	cout << "I have been created with val = " << m_value << " at date = " << m_date << endl;
#endif
}

CValue::CValue(const CValue& C)
{


	*this = C;
#if VERBOSE
	cout << "Constructor copia: Se crea un defalult" << endl;
	cout << "I have been copied with val = " << m_value << " at date = " << m_date << endl;
#endif
}

CValue::~CValue()
{
#if  VERBOSE
	cout << "I have been deleted  val = " << m_value << " at date = " << m_date << endl;
#endif //  VERBOSE
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
#if VERBOSE
	cout << "Operator= Tenia:" << m_value << " at date = " << m_date << endl;
#endif
	this->m_date = c.m_date;
	this->m_value = c.m_value;
#if VERBOSE
	cout << "Ahora es: " << c.m_value << " at date = " << c.m_date << endl;
#endif

}
void CValue::setValue(float val)
{
	m_value = val;
}
void CValue::setDate(time_t date_set)
{
	m_date = date_set;
}
void CValue::operator+=(const CValue& c) { //Operator = overloaded
#if VERBOSE
	cout << "Operator+= Tenia:" << m_value << " at date = " << m_date << endl;
#endif
	this->m_date = c.m_date;
	this->m_value += c.m_value;
#if VERBOSE
	cout << " Ahora es: " << this->m_value << " at date = " << this->m_date << endl;
#endif //  VERBOSE

}
CValue CValue::operator+(const CValue& c) { //Operator = overloaded
#if VERBOSE
	cout << "Operator+ 1Param Suma:" << this->m_value << " at date = " << this->m_date;
	cout << " y : " << c.m_value << " at date = " << c.m_date << endl;
#endif //  VERBOSE
	this->m_date = c.m_date;
	this->m_value += c.m_value;
#if VERBOSE
	cout << " Ahora es: " << this->m_value << " at date = " << this->m_date << endl;
#endif
	return *this;
}
CValue& CValue::operator+(const int& i)
{
	m_value += i;
	return *this;
}
CValue operator+(const CValue& c1, const CValue& c2)
{
#if VERBOSE
	cout << "Operator+ 2Param Suma:" << c1.m_value << " at date = " << c1.m_date;
	cout << " y : " << c2.m_value << " at date = " << c2.m_date << endl;
#endif

	CValue t;
	t.m_date = c2.m_date;
	t.m_value = c1.m_value + c2.m_value;
#if VERBOSE
	cout << " Resultado es: " << t.m_value << " at date = " << t.m_date << endl;
#endif
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
