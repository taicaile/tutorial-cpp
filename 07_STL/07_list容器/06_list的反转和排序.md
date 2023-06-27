# list 的反转和排序

```c++
// 反转
reverse()
// 排序
sort()
```

```c++
#include <iostream>
#include <list>
using namespace std;

void printList(list<int> &l)
{
    for (list<int>::const_iterator it = l.begin(); it != l.end(); it++)
    {
        cout << *it << " ";
    }
    cout << endl;
}

bool myCompare(int v1, int v2)
{
    // 降序，v1 大于 v2 返回真
    return v1 > v2;
}

void test01()
{
    list<int> l1;
    l1.push_back(20);
    l1.push_back(10);
    l1.push_back(40);
    l1.push_back(30);

    // 反转
    printList(l1);
    l1.reverse();
    printList(l1);

    // 排序
    printList(l1);
    l1.sort();
    printList(l1);
    l1.sort(myCompare);
    printList(l1);
    // 所有不支持随机访问迭代器的容器，不可以用标准算法
    // sort(l1.begin(), l1.end());
}

int main(int argc, char const *argv[])
{
    cout << "test 01" << endl;
    test01();
    return 0;
}
```
