# String 赋值操作

```c++
#include <iostream>
#include <vector>

using namespace std;

void test01()
{
    string str1;
    str1 = "Hello World";
    cout << "str1=" << str1 << endl;

    string str2;
    str2 = str1;
    cout << "str2=" << str2 << endl;

    string str3;
    str3 = 'a';
    cout << "str3=" << str3 << endl;

    string str4;
    str4.assign("Hello C++");
    cout << "str4=" << str4 << endl;

    string str5;
    str5.assign("abcd", 3);
    cout << "str5=" << str5 << endl;

    string str6;
    str6.assign(str5);
    cout << "str6=" << str6 << endl;

    string str7;
    str7.assign(5, 'a');
    cout << "str7=" << str7 << endl;
}

int main(int argc, char const *argv[])
{
    test01();

    return 0;
}
```
