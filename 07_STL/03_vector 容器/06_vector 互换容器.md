# Vector 容器互换

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
    // Vector 容器呼唤
    vector<int> v1;
    for (int i = 0; i < 10; i++)
    {
        v1.push_back(i);
    }

    printVector(v1);

    vector<int> v2;
    for (int i = 10; i > 0; i--)
    {
        v2.push_back(i);
    }
    printVector(v2);

    // 交换后
    v1.swap(v2);
    printVector(v1);
    printVector(v2);
}

// 实际用途，可以利用 swap 收缩内存空间
void test02()
{
    vector<int> v;
    for (int i = 0; i < 10000; i++)
    {
        v.push_back(i);
    }

    cout << "v 的容量是: " << v.capacity() << endl;
    cout << "v 的大小为: " << v.size() << endl;

    v.resize(3);
    cout << "v 的容量是: " << v.capacity() << endl;
    cout << "v 的大小为: " << v.size() << endl;

    // 用 swap 收缩，v喝匿名对象互换
    vector<int>(v).swap(v);
    cout << "v 的容量是: " << v.capacity() << endl;
    cout << "v 的大小为: " << v.size() << endl;

    printVector(v);
}

int main(int argc, char const *argv[])
{
    test01();
    test02();

    return 0;
}
```
