# deque 容器的赋值操作

```c++
#include <iostream>
#include <deque>
using namespace std;

void printDeque(deque<int> &d);

void test01()
{
    deque<int> d1;
    for(int i=0; i<10; i++){
        d1.push_back(i);
    }
    printDeque(d1);

    // = 号赋值
    deque<int> d2;
    d2 = d1;
    printDeque(d2);

    // assign 赋值
    deque<int> d3;
    d3.assign(d1.begin(), d1.end());
    printDeque(d3);

    //n 个 常数
    deque<int> d4;
    d4.assign(10, 100);
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
