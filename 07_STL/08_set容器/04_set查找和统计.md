# set 查找和统计

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

    // 查找
    set<int>::iterator it = s1.find(10);
    if(it != s1.end())
    {
        cout << "找到元素" << endl;
    }
    else
    {
        cout << "未找到元素" << endl;
    }

    // 统计元素
    int cnt = s1.count(20);
    cout << cnt << endl;
}

int main(int argc, char const *argv[])
{
    /* code */
    test01();

    return 0;
}
```
