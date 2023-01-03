# String 容器构造函数

```c++
#include <iostream>
#include <vector>
#include <string>
using namespace std;

// string(); // 创建一个空的字符串
// string(const char* s) // 使用字符串 s 初始化
// string(const string& str) // 使用一个 string 对象初始化另一个 string 对象
// string(int n, char c) // 使用 n 个字符 c 初始化

void test01()
{
    // 创建一个空的字符串
    string s1;

    // 使用字符串 s 初始化
    const char *str = "Hello World.";
    string s2(str);
    cout << s2 << endl;

    // 使用一个 string 对象初始化另一个 string 对象
    string s3(s2);
    cout << s3 << endl;

    // 使用 n 个字符 c 初始化
    string s4(10, 'a');
    cout << s4 << endl;
}

int main(int argc, char const *argv[])
{
    test01();
    return 0;
}
```
