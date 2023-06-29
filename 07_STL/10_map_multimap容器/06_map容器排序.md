# map 容器排序

```c++
#include <iostream>
#include <map>
#include <string>
using namespace std;

class MyCompare
{
public:
    bool operator()(int v1, int v2)
    {
        // 降序
        return v1 > v2;
    }
};

void test01()
{
    map<int, int> m;

    m.insert(make_pair(1, 10));
    m.insert(make_pair(2, 20));
    m.insert(make_pair(3, 30));
    m.insert(make_pair(4, 40));

    for (map<int, int>::iterator it = m.begin(); it != m.end(); it++)
    {
        cout << "key = " << it->first << " value=" << it->second << endl;
    }
    cout << endl;

    map<int, int, MyCompare> m1;
    m1.insert(make_pair(1, 10));
    m1.insert(make_pair(2, 20));
    m1.insert(make_pair(3, 30));
    m1.insert(make_pair(4, 40));

    for (map<int, int, MyCompare>::iterator it = m1.begin(); it != m1.end(); it++)
    {
        cout << "key = " << it->first << " value=" << it->second << endl;
    }
}

int main(int argc, char const *argv[])
{
    /* code */
    test01();

    return 0;
}
```
