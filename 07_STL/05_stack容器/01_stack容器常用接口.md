# stack 容器常用接口

构造函数

```c++
stack<T> stk;
stack(const stack &stk);
```

赋值操作

```c++
stack& operator=(const stack &stk);
```

数据存取

```c++
push(elem);
pop();
top();
```

大小操作

```c++
empty();
size();
```

```c++
#include <iostream>
#include <deque>
#include <algorithm>
#include <stack>
using namespace std;

void printDeque(deque<int> &d);

void test01()
{
    stack<int> s;

    // 入栈
    s.push(10);
    s.push(20);
    s.push(30);
    cout << "栈的大小：" << s.size() << endl;

    while (!s.empty())
    {
        cout << s.top() << endl;
        s.pop();
    }

    cout << "栈的大小：" << s.size() << endl;
}

int main(int argc, char const *argv[])
{
    cout << "test 01" << endl;
    test01();
    return 0;
}
```
