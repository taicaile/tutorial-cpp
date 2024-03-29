# set 插入和删除

```c++
// 在容器中插入元素
insert(elem);
// 清楚所有元素
clear();
// 删除 pos 迭代器所指的元素，返回下一个元素的迭代器
erase(pos);
// 删除区间 [begin, end) 的所有元素，返回下一个元素的迭代器。
erase(beg, end);
// 删除容器中值为 elem 的元素。
erase(elem);
```

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

    // 删除
    s1.erase(s1.begin());
    printSet(s1);

    // 删除重载
    s1.erase(20);
    printSet(s1);

    // 清空
    s1.erase(s1.begin(), s1.end());
    printSet(s1);

    s1.insert(100);
    s1.clear();
    printSet(s1);
}

int main(int argc, char const *argv[])
{
    /* code */
    test01();

    return 0;
}
```
