---
title: 数组的高阶方法
keywords: 遍历数组forEach|查找数组元素filter、find、findIndex、some、every|处理数组map|计算数组reduce
cover: [https://img-blog.csdnimg.cn/aa36708b9de646f087f881560e7f252b.png]
sticky: 10
banner: 
  type: img
  bgurl: /static/img/bg-learn.jpg
  bannerText: Hi my new friend!
categories: 'learn'
tags: 
 - 前端
 - javascript
 - Array
---
苦尽甘来

# `forEach()`

数组每个元素都执行一次回调函数(循环)。

**语法：**

```js
arr.forEach((item, index, arr) => {
  console.log(item, index, arr)
})
参数：
- item: 数组中的每项元素
- index: 每项元素的做索引值
- arr: 数组本身
```

注意：`forEach`方法没有返回值，不能`return`

**例子：**

```js
let arr = [1, 2, 3, 4]
let newArr = arr.filter(item => item + 1) 
console.log(newArr) // [2, 3, 4, 5]
```

# `filter()`

检测数组元素，并返回符合条件所有元素的数组。

**语法:**

```js
arr.filter((item, index, arr) => {
  console.log(item, index, arr)
  return 判断条件
})
参数：
- item: 数组中的每项元素
- index: 每项元素的做索引值
- arr: 数组本身
```

**例子:**

```js
let arr = [1, 2, 3, 4]
let newArr = arr.filter(item => item > 2)
console.log(newArr) // [3, 4]
```

# `find()`

检索数组，返回符合传入条件的第一个数组元素。

**语法:**

```js
arr.find((item, index, arr) => {
  console.log(item, index, arr)
  return 判断条件
})
参数：
- item: 数组中的每项元素
- index: 每项元素的做索引值
- arr: 数组本身
```

**例子:**

```js
let arr = [
  {name: '张三', age: 19},
  {name: '李四', age: 20}
]
let d = arr.find(item => item.name === '张三') 
console.log(d) // {name: '张三', age: 19}
```

# `findIndex()`

检索数组，返回符合传入条件的第一个数组元素的索引。

**语法:**

```js
arr.findIndex((item, index, arr) => {
  console.log(item, index, arr)
  return 判断条件
})
参数：
- item: 数组中的每项元素
- index: 每项元素的做索引值
- arr: 数组本身
```

**例子:**

```js
let arr = [1, 2, 3, 4]
let index = arr.findIndex(item => item === 3) 
console.log(index)  // 2
```

# `reduce()`

将数组所有的元素计算为一个值（从左到右）

**语法:**

```js
arr.reduce((prod, item) => {
  console.log(prod, item)
  return prod + item
}, value)
参数：
- prod: 之前计算的值
- item: 每项元素的做索引值
- value: 计算的初始值，默认为`0`
```

**例子:**

```js
let arr = [1, 2, 3, 4]
let newValue = arr.reduce((prod, item) => {
  return prod + item
}, 0)
console.log(newValue) // 10
```

# `some()`

检测数组元素中是否有元素符合指定条件, 返回值`true/false`

**语法:**

```js
arr.some((item, index, arr) => {
  console.log(item, index, arr)
  return 判断条件
})
参数：
- item: 数组中的每项元素
- index: 每项元素的做索引值
- arr: 数组本身
```

**例子:**

```js
let arr = ['张三', '李四', '王五']
let isZS = arr.some((item) => item === '张三')
console.log(isZS)  // true
```

# `every()`

检测数组元素的每个元素是否都符合条件.返回值`true/false`

**语法:**

```js
arr.every((item, index, arr) => {
  console.log(item, index, arr)
  return 判断条件
})
参数：
- item: 数组中的每项元素
- index: 每项元素的做索引值
- arr: 数组本身
```

**例子:**

```js
let arr = [1, 2, 5, 9]
// 判断数组中的每一项是否都大于5
let a = arr.every((item) => item > 5)
console.log(a)  // false
// 判断数组中的每一项是否都小于10
let a = arr.every((item) => item < 10)
console.log(a)  // true
```

# `map()`

处理数组的每个元素，并返回处理后的数组。

**语法:**

```js
arr.map((item, index, arr) => {
  console.log(item, index, arr)
  return 判断条件/对象
})
参数：
- item: 数组中的每项元素
- index: 每项元素的做索引值
- arr: 数组本身
```

**例子:**

```js
let arr = [
  {name: '张三', age: 19},
  {name: '李四', age: 20}
]
// 用法一
let arr1 = arr.map(item => item.name) 
console.log(arr1)  // ['张三', '李四']
// 用法二
let arr2 = arr.map(item => {
  return {
    ...item,
    item.sex = '男'
  }
})
console.log(arr2) // [{name: '张三', age: 19, sex: '男'}, {name: '李四', age: 20, sex: '男'}]
```