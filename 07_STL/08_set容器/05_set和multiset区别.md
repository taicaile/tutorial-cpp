# set 和 multiset 区别

```c++
#include <iostream>
#include <set>
using namespace std;

void printSet(set<int> &s)
{
    for (set<int>::const_iterator it = s.begin(); it != s.end(); it++)
    {
        cout << *it << " ";
    }
    cout << endl;
}
// set 容器插入和删除
void test01()
{
    set<int> s;
    pair<set<int>::iterator, bool> ret = s.insert(10);

    if (ret.second)
    {
        cout << "第一次插入成功" << endl;
    }
    else
    {
        cout << "第一次插入失败" << endl;
    }

    ret = s.insert(10);
    if (ret.second)
    {
        cout << "第二次插入成功" << endl;
    }
    else
    {
        cout << "第二次插入失败" << endl;
    }

    multiset<int> ms;
    ms.insert(10);
    ms.insert(10);
    ms.insert(10);

    for (multiset<int>::const_iterator it = ms.begin(); it != ms.end(); it++)
    {
        cout << *it << endl;
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
