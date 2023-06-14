# deque 容器的数据读取

```c++
#include <iostream>
#include <deque>
using namespace std;

void printDeque(deque<int> &d);

void test01()
{
    deque<int> d1;
    d1.push_back(10);
    d1.push_back(20);
    d1.push_front(100);
    d1.push_front(200);

    // 通过 [] 方式读取
    for (int i = 0; i < int(d1.size()); i++)
    {
        cout << d1[i] << " ";
    }
    cout << endl;

    // 通过 at 方式访问元素
    for (int i = 0; i < int(d1.size()); i++)
    {
        cout << d1.at(i) << " ";
    }
    cout << endl;
    cout << "第一个元素为: " << d1.front() << endl;
    cout << "最后一个元素: " << d1.back() << endl;
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
