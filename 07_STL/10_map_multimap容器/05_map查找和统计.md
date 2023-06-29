# map 容器查找和统计

```c++
#include <iostream>
#include <map>
#include <string>
using namespace std;

void printMap(map<int, int> &m)
{
    for (map<int, int>::const_iterator it = m.begin(); it != m.end(); it++)
    {
        cout << "key= " << ((*it).first) << " value=" << (*it).second << endl;
    }
    cout << endl;
}

void test01()
{
    map<int, int> m;

    m.insert(make_pair(1, 10));
    m.insert(make_pair(2, 20));
    m.insert(make_pair(3, 30));
    m.insert(make_pair(4, 40));

    map<int, int>::iterator pos = m.find(3);
    if (pos != m.end())
    {
        cout << "查到了元素 key= " << ((*pos).first) << " value=" << (*pos).second << endl;
    }

    pos = m.find(5);
    if (pos != m.end())
    {
        cout << "查到了元素 key= " << ((*pos).first) << " value=" << (*pos).second << endl;
    }

    // 统计，map不允许插入重复key元素，count结构是0或1
    int num = m.count(3);
    cout << "num=" << num << endl;
}

int main(int argc, char const *argv[])
{
    /* code */
    test01();

    return 0;
}
```
