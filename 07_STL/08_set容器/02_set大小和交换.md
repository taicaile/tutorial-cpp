# set 大小和交换

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

void test01()
{
    // set 容器特点，所有元素插入时候自动排序
    // set 容器不允许插入重复值
    set<int> s1;
    s1.insert(10);
    s1.insert(10);
    s1.insert(30);
    s1.insert(50);
    s1.insert(50);
    s1.insert(20);
    printSet(s1);

    if (s1.empty())
    {
        cout << "s1 为空" << endl;
    }
    else
    {
        cout << "s1 不为空" << endl;
        cout << "s1 的size:" << s1.size() << endl;
    }
}
// 交换
void test02()
{
    set<int> s1;
    set<int> s2;

    s1.insert(1);
    s1.insert(2);
    s1.insert(3);

    s2.insert(10);
    s2.insert(20);
    s2.insert(30);
    s2.insert(40);

    printSet(s1);
    printSet(s2);

    s1.swap(s2);

    printSet(s1);
    printSet(s2);
}

int main(int argc, char const *argv[])
{
    /* code */
    test01();
    test02();

    return 0;
}
```
