# deque 容器的大小操作

```c++
// 判断容器是否为空
deque.empy();
// 判断容器中元素的个数
deque.size();
// 重新指定容器的长度，若容器变长，则以默认值填充新位置
// 若容器变短，则将超出的容器长度的元素删除
deque.resize(num);
deque.resize(num, elem);
```

```c++
#include <iostream>
#include <deque>
using namespace std;

void printDeque(deque<int> &d);

void test01()
{
    deque<int> d1;
    for(int i=0; i<10; i++){
        d1.push_back(i);
    }
    printDeque(d1);
    if(d1.empty()){
        cout<< "True" << endl;
    }
    else{
        cout << "d1 size: " << d1.size() << endl;
    }

    d1.resize(15);
    printDeque(d1);
    d1.resize(20, 1);
    printDeque(d1);
    d1.resize(5);
    printDeque(d1);
}

void printDeque(deque<int> &d)
{
    for (deque<int>::const_iterator it = d.begin(); it != d.end(); it++)
    {
        std::cout << *it << " ";
    }
    std::cout << std::endl;
}

int main(int argc, char const *argv[])
{
    test01();
    return 0;
}
```
