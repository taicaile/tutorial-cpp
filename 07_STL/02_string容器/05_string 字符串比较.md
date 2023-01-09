# String 字符串比较

```c++
#include <iostream>
#include <vector>
#include <string>
using namespace std;

void test01()
{
    string str1 = "hello";
    string str2 = "hello";
    // 0 意味着 str1 = str2
    // >0 意味着 str1 > str2 字符串比较
    // <0 意味着 str1 < str2 字符串比较
    cout << str1.compare(str2) << endl;
}


int main(int argc, char const *argv[])
{
    test01();
    return 0;
}
```
