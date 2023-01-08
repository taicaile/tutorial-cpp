# string 字符串查找和替换

```c++
#include <iostream>
#include <vector>
#include <string>
using namespace std;

void test01()
{
    string str1 = "abcdefgde";
    int pos = str1.find("de");
    if (pos == -1)
    {
        cout << "未找到字符串" << endl;
    }
    else
    {
        cout << pos << endl;
    }
    // rfind
    pos = str1.rfind("de");
    if (pos == -1)
    {
        cout << "未找到字符串" << endl;
    }
    else
    {
        cout << pos << endl;
    }
}

void test02()
{
    string str1 = "abcdefg";
    str1.replace(1, 3, "111");
    cout << str1 << endl;
}

int main(int argc, char const *argv[])
{
    test01();
    test02();
    return 0;
}
```
