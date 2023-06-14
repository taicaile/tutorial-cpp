# deque 容器的排序

```c++
#include <iostream>
#include <deque>
#include <algorithm>

using namespace std;

void printDeque(deque<int> &d);

void test01()
{
    deque<int> d1;
    d1.push_back(10);
    d1.push_back(20);
    d1.push_front(100);
    d1.push_front(200);

    printDeque(d1);

    // 排序
    sort(d1.begin(), d1.end());
    printDeque(d1);
}

void printDeque(deque<int> &d)
{
    for (deque<int>::const_iterator it = d.begin(); it != d.end(); it++)
    {
        std::cout << *it << " ";
    }
    std::cout << std::endl;
}

int main(int argc, char const *argv[])
{
    cout << "test 01" << endl;
    test01();
    return 0;
}
```
