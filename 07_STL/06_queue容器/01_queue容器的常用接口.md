# queue 容器的常用接口

```c++
// 构造函数
queue<T> que;
// 拷贝构造函数
queue(const queue &que)
```

```c++
// 赋值操作
queue& operator=(const queue &que);
```

```c++
// 数据存取
// 往队尾添加元素
push(elem);
// 从队头移除第一个元素
pop();
// 返回最后一个元素
back();
// 返回第一个元素
front();
```

```c++
// 大小操作
empty();
size();
```

```c++
#include <iostream>
#include <queue>
#include <algorithm>
using namespace std;

void printDeque(deque<int> &d);

void test01()
{
    queue<int> q;

    // 入队
    q.push(10);
    q.push(20);
    q.push(30);
    cout << "队列的大小：" << q.size() << endl;

    while (!q.empty())
    {
        cout << q.front() << endl;
        q.pop();
    }

    cout << "队列的大小：" << q.size() << endl;
}

int main(int argc, char const *argv[])
{
    cout << "test 01" << endl;
    test01();
    return 0;
}
```
