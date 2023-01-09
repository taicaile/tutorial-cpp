# String 插入和删除

```c++
#include <iostream>
#include <vector>
#include <string>
using namespace std;

void test01()
{
    string str = "hello";

    // 插入
    str.insert(1, "111");
    cout << str << endl;

    // 删除
    str.erase(1, 3);
    cout << str << endl;
}

int main(int argc, char const *argv[])
{
    test01();
    return 0;
}
```
