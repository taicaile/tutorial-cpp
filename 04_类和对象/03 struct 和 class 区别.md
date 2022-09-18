# Struct 和 Class 区别

```c++
#include <iostream>

using namespace std;

class C1
{
    // 默认权限是私有
    int m_A;
};

struct C2
{
    int m_A; //  默认权限是公共
};



int main(int argc, char const *argv[])
{

    return 0;
}
```
