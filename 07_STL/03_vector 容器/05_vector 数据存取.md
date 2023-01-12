# Vector 数据存取

```c++
#include <iostream>
#include <vector>
using namespace std;

void printVector(vector<int> &v)
{
    for (vector<int>::iterator it = v.begin(); it != v.end(); it++)
    {
        cout << *it << " ";
    }
    cout << endl;
}

void test01()
{
    // vector 容器插入和删除
    vector<int> v1;
    v1.push_back(10);
    v1.push_back(20);
    v1.push_back(30);
    v1.push_back(40);
    v1.push_back(50);

    // 利用 [] 方式访问数组中元素
    for (int i = 0; i < v1.size(); i++)
    {
        cout << v1[i] << endl;
    }
    // at
    for (int i = 0; i < v1.size(); i++)
    {
        cout << v1.at(i) << endl;
    }

    // 获取第一个元素
    cout << v1.front() << endl;
    // 获取最后一个元素
    cout << v1.back() << endl;
}

int main(int argc, char const *argv[])
{
    test01();
    return 0;
}
```
