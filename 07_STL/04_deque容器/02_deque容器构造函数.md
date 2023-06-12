# deque 容器的构造函数

```c++
#include <iostream>
#include <deque>
using namespace std;

void printDeque(deque<int> &d);

void test01()
{
    deque<int> d1;
    for (int i = 0; i < 10; i++)
    {
        d1.push_back(i);
    }
    printDeque(d1);

    // 区间初始化方式
    deque<int> d2(d1.begin(), d1.end());
    printDeque(d2);

    // 常量初始化
    deque<int> d3(10, 100);
    printDeque(d3);

    // 拷贝构造函数
    deque<int> d4(d3);
    printDeque(d4);
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
    test01();
    return 0;
}
```
