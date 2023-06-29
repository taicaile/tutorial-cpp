# set 容器的排序

```c++
#include <iostream>
#include <set>
#include <string>
using namespace std;

// 仿函数
class MyCompare
{
public:
    bool operator()(int v1, int v2)
    {
        return v1 > v2;
    }
};

void test01()
{
    set<int> s1;
    s1.insert(10);
    s1.insert(40);
    s1.insert(30);
    s1.insert(50);

    for (set<int>::iterator it = s1.begin(); it != s1.end(); it++)
    {
        cout << *it << " ";
    }
    cout << endl;

    set<int, MyCompare> s2;
    s2.insert(10);
    s2.insert(40);
    s2.insert(30);
    s2.insert(50);
    for (set<int, MyCompare>::iterator it = s2.begin(); it != s2.end(); it++)
    {
        cout << *it << " ";
    }
    cout << endl;
}

int main(int argc, char const *argv[])
{
    /* code */
    test01();

    return 0;
}
```
