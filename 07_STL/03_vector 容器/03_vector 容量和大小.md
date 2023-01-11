# Vector 容量和大小

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
    // vector 容器的容量和大小操作
    vector<int> v1;
    for (int i = 0; i < 10; i++)
    {
        v1.push_back(i);
    }

    if (v1.empty())
    {
        cout << "v1 为空" << endl;
    }
    else
    {
        cout << "v1 不为空" << endl;
        cout << "v1 的容量为: " << v1.capacity() << endl;
        cout << "v1 的大小为: " << v1.size() << endl;
    }

    // resize，默认用 0 填充 或者 指定
    v1.resize(15, 100);
    printVector(v1);

    // 超出被删除
    v1.resize(5);
    printVector(v1);
}

int main(int argc, char const *argv[])
{
    test01();
    return 0;
}
```
