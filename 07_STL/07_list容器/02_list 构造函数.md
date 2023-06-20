# list 构造函数

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
    printList(l1);

    // 区间构造
    list<int> l2(l1.begin(), l1.end());
    printList(l2);
    // 拷贝构造
    list<int> l3(l1);
    printList(l3);

    // n 个 element
    list<int> l4(10, 1000);
    printList(l4);

}

int main(int argc, char const *argv[])
{
    cout << "test 01" << endl;
    test01();
    return 0;
}
```
