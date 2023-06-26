# list 赋值和交换

```c++
#include <iostream>
#include <list>
#include <algorithm>
using namespace std;

void printList(list<int> &l)
{
    for (list<int>::const_iterator it = l.begin(); it != l.end(); it++)
    {
        cout << *it << " ";
    }
    cout << endl;
}

void test01()
{
    list<int> l1;
    l1.push_front(1);
    l1.push_front(2);
    l1.push_front(3);
    l1.push_front(4);

    printList(l1);

    // 赋值
    list<int> l2;
    l2 = l1;
    printList(l2);

    // 区间赋值
    list<int> l3;
    l3.assign(l1.begin(), l1.end());
    printList(l3);

    // n 个 element 赋值
    list<int> l4;
    l4.assign(10, 100);
    printList(l4);
}


void test02()
{
    list<int> l1;
    l1.push_front(1);
    l1.push_front(2);
    l1.push_front(3);
    l1.push_front(4);

    list<int> l2;
    l2.assign(5, 100);

    printList(l1);
    printList(l2);

    // 交换后
    l1.swap(l2);
    printList(l1);
    printList(l2);
}

int main(int argc, char const *argv[])
{
    cout << "test 01" << endl;
    test01();
    cout << "test 02" << endl;
    test02();
    return 0;
}
```
