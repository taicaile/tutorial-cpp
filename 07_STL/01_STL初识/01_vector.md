# Vector

```c++
#include <iostream>
#include <vector>

using namespace std;

void MyPrint(int val)
{
    cout << val << endl;
}

void test01()
{
    vector<int> v;

    // 向容器中插入数据
    v.push_back(1);
    v.push_back(2);
    v.push_back(3);

    // 通过迭代器访问容器中的数据
    vector<int>::iterator itBegin = v.begin();
    vector<int>::iterator itEnd = v.end();
    // 第一种遍历方式
    while (itBegin != itEnd)
    {
        cout << *itBegin << endl;
        itBegin++;
    }
    // 第二种遍历方式
    for (vector<int>::iterator it = v.begin(); it != v.end(); it++)
    {
        cout << *it << endl;
    }

    // 第三种遍历方式
    for_each(v.begin(), v.end(), MyPrint);
}

int main(int argc, char const *argv[])
{
    test01();
    return 0;
}
```
