# Vector

## Vector 插入数据

```c++
#include <iostream>
#include <vector>

using namespace std;

void MyPrint(int val)
{
    cout << val << endl;
}

void test01()
{
    vector<int> v;

    // 向容器中插入数据
    v.push_back(1);
    v.push_back(2);
    v.push_back(3);

    // 通过迭代器访问容器中的数据
    vector<int>::iterator itBegin = v.begin();
    vector<int>::iterator itEnd = v.end();
    // 第一种遍历方式
    while (itBegin != itEnd)
    {
        cout << *itBegin << endl;
        itBegin++;
    }
    // 第二种遍历方式
    for (vector<int>::iterator it = v.begin(); it != v.end(); it++)
    {
        cout << *it << endl;
    }

    // 第三种遍历方式
    for_each(v.begin(), v.end(), MyPrint);
}

int main(int argc, char const *argv[])
{
    test01();
    return 0;
}
```

## Vector 插入自定义数据类型

```c++
#include <iostream>
#include <vector>

using namespace std;

// 自定义数据类型

class Person
{
public:
    Person(string name, int age)
    {
        this->m_Age = age;
        this->m_Name = name;
    }

    string m_Name;
    int m_Age;
};

void test01()
{
    vector<Person> v;
    Person p1("111", 11);
    Person p2("222", 22);
    Person p3("333", 33);
    Person p4("444", 44);
    Person p5("555", 55);

    v.push_back(p1);
    v.push_back(p2);
    v.push_back(p3);
    v.push_back(p4);
    v.push_back(p5);

    for (vector<Person>::iterator it = v.begin(); it != v.end(); it++)
    {
        cout << (*it).m_Name << "\t" << (*it).m_Age << endl;
    }
}

void test02()
{
    vector<Person *> v;
    Person p1("111", 11);
    Person p2("222", 22);
    Person p3("333", 33);
    Person p4("444", 44);
    Person p5("555", 55);

    v.push_back(&p1);
    v.push_back(&p2);
    v.push_back(&p3);
    v.push_back(&p4);
    v.push_back(&p5);

    for (vector<Person *>::iterator it = v.begin(); it != v.end(); it++)
    {
        cout << (*it)->m_Name << "\t" << (*it)->m_Age << endl;
    }
}

int main(int argc, char const *argv[])
{
    test01();
    cout << "------" << endl;
    test02();

    return 0;
}
```
