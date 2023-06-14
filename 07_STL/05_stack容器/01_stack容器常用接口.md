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
