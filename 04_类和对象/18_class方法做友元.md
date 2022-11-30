# Class 方法做为友元

```c++

#include <iostream>
#include <string>

using namespace std;

class Building;

class GoodGay
{
public:
    GoodGay();
    void visit();
    void visit2();
    Building *building;
};


class Building
{
    friend void GoodGay::visit();

public:
    Building();
    string m_SittingRoom;

private:
    string m_BedRoom;
};

Building::Building()
{
    m_SittingRoom = "客厅";
    m_BedRoom = "卧室";
}

void GoodGay::visit()
{
    cout << "visit 函数正在访问: " << building->m_SittingRoom << endl;
    // 注意这里在 linux 下报错，不确定 windows 下是否表现不一致
    cout << "visit 函数正在访问: " << building->m_BedRoom << endl;
}

void GoodGay::visit2()
{
    cout << "visit 函数正在访问: " << building->m_SittingRoom << endl;
    // cout << "visit 函数正在访问: " << building->m_BedRoom << endl;
}

GoodGay::GoodGay()
{
    building = new Building();
}

void test01()
{
    GoodGay gg;
    gg.visit();
    gg.visit2();
}

int main(int argc, char const *argv[])
{
    test01();
    return 0;
}

```
