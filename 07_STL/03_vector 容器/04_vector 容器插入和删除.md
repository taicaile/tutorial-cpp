# Vector 容器插入和删除

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

    // 遍历
    printVector(v1);

    // 尾部删除
    v1.pop_back();
    printVector(v1);

    // 插入
    v1.insert(v1.begin(), 100);
    printVector(v1);

    v1.insert(v1.begin(), 2, 1000);
    printVector(v1);

    // 删除
    v1.erase(v1.begin());
    printVector(v1);

    // 提供区间
    v1.erase(v1.begin(), v1.end());
    // same with
    // v1.clear();
    printVector(v1);
}

int main(int argc, char const *argv[])
{
    test01();
    return 0;
}
```
