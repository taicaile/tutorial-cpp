# const 修饰成员函数

常函数:

- 成员函数后加 const 后我们称为这个函数为常函数
- 常函数内不可以修改成员属性
- 成员属性声明时加关键字 mutable 后，在常函数中依然可以修改

常对象：

- 声明对象前加 const 称为该对象为常对象
- 常对象只能调用常函数

```c++

#include <iostream>

using namespace std;

class Person
{

public:
    // this 指针的本质是指针常量，指针的指向是不可以修改的
    // const Person * const this;
    // 在成员函数后面加 const，修饰的是 this 指针，让指针指向的值也不可以修改

    Person(int mA, int mB)
    {
        this->m_A = mA;
        this->m_B = mB;
    }

    void ShowPerson() const
    {
        // this->m_A = 100;
        this->m_B = 200;
    }
    int m_A;
    mutable int m_B; // 特殊变量，即使在常函数中，也可以修改这个值。
};

void test01()
{
    Person p(10,20);
    p.ShowPerson();
}

void test02()
{
    const Person p; //  在对象前加 const，这个对象叫常对象
    // p.m_A = 100;
    p.m_B = 200;
}

int main(int argc, char const *argv[])
{
    test01();
    test02();
    return 0;(10,20)
}

```
