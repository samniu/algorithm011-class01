### queue、stack、heap
* 队列 （queue）是先进先出（FIFO, First-In-First-Out）的线性表。
在具体应用中通常用链表或者数组来实现。队列只允许在后端（称为rear）进行插入操作，在前端（称为front）进行删除操作。

* 堆栈（stack）又称为栈或堆叠，是计算机科学中的一种抽象数据类型。
只允许在有序的线性数据集合的一端（称为堆栈顶端，top）进行加入数据（push）和移除数据（pop）的运算。
因而按照后进先出（LIFO, Last In First Out）的原理运作。

* 堆（英语：Heap）是计算机科学中的一种特别的树状数据结构。若是满足以下特性，即可称为堆：“给定堆中任意节点P和C，若P是C的母节点，那么P的值会小于等于（或大于等于）C的值”。

	若母节点的值恒小于等于子节点的值，此堆称为最小堆（min heap）；反之，若母节点的值恒大于等于子节点的值，此堆称为最大堆（max heap）。

	在堆中最顶端的那一个节点，称作根节点（root node），根节点本身没有母节点（parent node）。
	
#### Swift
Swift `Dictionary`
Kotlin `HashMap` 

Swift 语言提供数组（Array）、集合（Set）和字典（Dictionary）三种基本的集合类型用来存储集合数据。
数组是有序数据的集。集合是无序无重复数据的集。字典是无序的键值对的集。

![IMAGE](https://docs.swift.org/swift-book/_images/CollectionTypes_intro_2x.png)

集合类型的哈希值
一个类型为了存储在集合中，该类型必须是可哈希化的——也就是说，该类型必须提供一个方法来计算它的哈希值。一个哈希值是 Int 类型的，相等的对象哈希值必须相同，比如 a == b,因此必须 a.hashValue == b.hashValue。

