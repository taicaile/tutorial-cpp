# String 字符存取

```c++
#include <iostream>
#include <vector>
#include <string>
using namespace std;

void test01()
{
    string str = "hello";

    // 通过 [] 访问单个字符
    for (int i = 0; i < str.size(); i++)
    {
        cout << str[i] << endl;
        ;
    }
    // 通过 at 方式
    for (int i = 0; i < str.size(); i++)
    {
        cout << str.at(i) << endl;
    }

    // 修改单个字符
    str[0] = 'x';
    cout << str << endl;
}

int main(int argc, char const *argv[])
{
    test01();
    return 0;
}
```
