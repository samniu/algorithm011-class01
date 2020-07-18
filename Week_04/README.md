学习笔记
深度优先搜索 (Depth-First-Search，DFS)

```python
visited = set() 

def dfs(node, visited):
    if node in visited: # terminator
      	# already visited 
    	 return 

  	visited.add(node) 
 
	  # process current node here. 
	  ...
	  for next_node in node.children(): 
		    if next_node not in visited: 
			     dfs(next_node, visited)
```

广度优先搜索 (Breadth-First Search，BFS)

```python
def BFS(graph, start, end):
    visited = set()
	  queue = [] 
	  queue.append([start]) 
	  
	  while queue: 
		  node = queue.pop() 
		  visited.add(node)
		
		  process(node) 
		  nodes = generate_related_nodes(node) 
		  queue.push(nodes)
		
	# other processing work 
	...
```

动态规划（Dynamic programming，简称DP）, 通过把原问题分解为相对简单的子问题的方式求解复杂问题的方法。

二分查找

```python
left, right = 0, len(array) - 1 
while left <= right: 
      mid = (left + right) / 2 
      if array[mid] == target: 
            # find the target!! 
            break or return result 
      elif array[mid] < target: 
            left = mid + 1 
      else: 
            right = mid - 1
```		    