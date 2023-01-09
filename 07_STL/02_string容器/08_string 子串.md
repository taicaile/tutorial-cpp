# string 子串

```c++
#include <iostream>
#include <vector>
#include <string>
using namespace std;

void test01()
{
    string str = "abcdef";

    string subStr = str.substr(1, 3);
    cout << "subStr = " << subStr << endl;
}

void test02()
{
    string email = "hello@hello.com";
    // 从邮件地址中获取用户名信息
    int pos = email.find('@');
    cout << email.substr(0, pos) << endl;
}

int main(int argc, char const *argv[])
{
    test01();
    test02();
    return 0;
}
```
