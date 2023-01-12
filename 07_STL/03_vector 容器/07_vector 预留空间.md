# Vector 预留空间

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
    int num = 0;
    int *p = NULL;
    for (int i = 0; i < 10; i++)
    {
        v1.push_back(i);
        // 如果指针不指向首地址，则自增，
        if(p!=&v1[0])
        {
            num++;
        }
    }
    cout << num << endl;

}
int main(int argc, char const *argv[])
{
    test01();

    return 0;
}
```
