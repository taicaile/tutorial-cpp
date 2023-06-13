# deque 容器的插入和删除

```c++
#include <iostream>
#include <deque>
using namespace std;

void printDeque(deque<int> &d);

void test01()
{
    deque<int> d1;
    d1.push_back(0);
    d1.push_back(1);
    d1.push_front(2);
    d1.push_front(3);

    printDeque(d1);

    d1.pop_back();
    printDeque(d1);

    d1.pop_front();
    printDeque(d1);
}

void test02()
{
    deque<int> d1;
    d1.push_back(10);
    d1.push_back(20);
    d1.push_front(100);
    d1.push_front(200);

    printDeque(d1);

    // insert
    d1.insert(d1.begin(), 1000);
    printDeque(d1);

    d1.insert(d1.begin(), 2, 10000);
    printDeque(d1);

    // 按照区间进行插入
    deque<int> d2;
    d2.push_back(1);
    d2.push_back(2);
    d2.push_back(3);

    d1.insert(d1.begin(), d2.begin(), d2.end());
    printDeque(d2);
}

void test03()
{

    deque<int> d1;
    d1.push_back(10);
    d1.push_back(20);
    d1.push_front(100);
    d1.push_front(200);

    deque<int>::iterator it = d1.begin();
    it++;
    d1.erase(it);
    printDeque(d1);

    // 按照区间方式删除
    d1.erase(d1.begin(), d1.end()-1);
    printDeque(d1);

    // 清空操作
    d1.clear();
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
    cout << "test 02" << endl;
    test02();
    cout << "test 03" << endl;
    test03();
    return 0;
}
```
