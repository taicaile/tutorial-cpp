# map 插入和删除

```c++
// 在容器中插入元素
insert(elem);
// 清楚所有元素
clear();
// 删除 pos 迭代器所指的元素，返回下一个元素的迭代器
erase(pos);
// 删除区间[beg, end) 的所有元素，返回下一个元素的迭代器
erase(beg, end);
// 删除容器中值为 key 的元素
erase(key);
```

```c++
#include <iostream>
#include <map>
#include <string>
using namespace std;

void printMap(map<int, int> &m)
{
    for (map<int, int>::const_iterator it = m.begin(); it != m.end(); it++)
    {
        cout << "key= " << ((*it).first) << " value=" << (*it).second << endl;
    }
    cout << endl;
}

void test01()
{
    map<int, int> m;

    // 第一种插入方式
    m.insert(pair<int, int>(1, 10));

    // 第二种插入方式
    m.insert(make_pair(2, 20));

    // 第三种
    m.insert(map<int, int>::value_type(3, 30));

    // 第四种，不建议中这种方式插入数据，可以用key访问value
    m[4] = 40;

    // 这里 m[5] 查询key不存在，会插入0
    cout << m[5] << endl;

    printMap(m);

    // 按照迭代器进行删除
    m.erase(m.begin());
    printMap(m);

    // 按照key进行删除
    m.erase(3);
    printMap(m);

    m[6] = 60;
    // 按照区间来删除
    m.erase(m.begin(), m.end());
    printMap(m);

    // 清空
    m.clear();
    printMap(m);
}

int main(int argc, char const *argv[])
{
    /* code */
    test01();

    return 0;
}
```
