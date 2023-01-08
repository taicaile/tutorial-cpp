# string 字符串拼接

函数原型，

```c++
string& operator+=(const char* str);
string& operator+=(const char c);
string& operator+=(const string& str);
string& append(const char *s);
// 把字符串 s 的前 n 个字符串连接到当前字符串结尾
string& append(const char*s, int n);
string& append(const string &s);
// 把字符串 s 中从 pos 开始的 n 个字符连接到字符串结尾
string& append(const string &s, int pos, int n);
```

```c++
#include <iostream>
#include <vector>
#include <string>
using namespace std;

void test01()
{
    string str1 = "I";
    str1 += "love c++";
    cout << "str1= " << str1 << endl;

    str1 += ",";
    cout << "str1= " << str1 << endl;

    string str2 = " and Python.";
    str1 += str2;
    cout << "str1= " << str1 << endl;

    string str3 = "I";
    str3.append("love C++");
    cout << "str3 = " << str3 << endl;

    str3.append(", and Python.", 5);
    cout << "str3 = " << str3 << endl;

    str3.append(str2);
    cout << "str3 = " << str3 << endl;

    str3.append(str2, 5, 8);
    cout << "str3 = " << str3 << endl;

}

int main(int argc, char const *argv[])
{
    test01();
    return 0;
}
```
