# list 插入和删除

```c++
// 在容器尾部加入一个元素
push_back(elem);
// 删除容器中最后一个元素
pop_back();
// 在容器开肉插入一个元素
push_front(elem);
// 从容器开肉移除第一个元素
pop_front();
// 在 pos 位置插入 elem 元素的拷贝，返回新数据的位置
insert(pos, elem);
// 在 pos 位置插入 n 个 elem 数据，无返回值
insert(pos, n, elem);
// 在 pos 位置插入 [begin, end] 区间的数据，无返回值
insert(pos, begin, end);
// 移除容器的所有数据
clear();
// 删除 [begin, end) 区间的数据，返回下一个数据的位置
erase(begin, end);
// 删除 pos 位置的数据，返回下一个数据的位置
erase(pos);
// 删除容器中所有与 elem 值匹配的元素
remove(elem);
```
