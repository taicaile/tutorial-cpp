# `this` 指针

`this` 指针不需要定义，直接使用即可。

`this` 指针的用途，

- 当形参和成员变量同名时，可用 this 指针来区分
- 当类的非静态成员函数中返回对象本身，可使用 `return *this`

```c++

#include<iostream>

using namespace std;

class Person
{
public:
    Person(int age){
        // age = age;
        this->age = age;
    }

    Person& PersonAddAge(Person &p){
        this->age += p.age;
        return *this;
    }

    int age;

};

void test01()
{
    Person p(12);
    cout << p.age << endl;
}

void test02()
{
    Person p1(10);
    Person p2(10);

    p1.PersonAddAge(p2).PersonAddAge(p2);

    cout << p1.age << endl;

}

int main(int argc, char const *argv[])
{
    test01();
    test02();
    return 0;
}

```
