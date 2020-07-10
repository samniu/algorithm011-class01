学习笔记
> recursion terminator 递归终结条件

> process logic in current level 处理当前层

> drill down 下探到下一层

> reverse the current level status if needed 清扫当前层的状态

```java
public void recur(int level, int param) {

    // terminator
    if (level > MAX_LEVEL) {
      // process result
      return;
    }
    
    // process current logic
    recur( level: level + 1, newParam);
    
    // restore current status
}
```

```python
def recursion(level, param1, param2, ...):
    # recursion terminator
    if level > MAX_LEVEL:
        process_result
        return
        
    # process logic in current level
    process(level, data...)
    
    # drill down
    self.recursion(level + 1, p1, ...)
    
    # reverse the current level status if needed
```
#### 思维要点
1. 抵制人肉递归
2. 找最近重复性 （找到最近简单方法，将其拆解成可重复解决的问题(重复子问题)）
3. 数学归纳法思维

