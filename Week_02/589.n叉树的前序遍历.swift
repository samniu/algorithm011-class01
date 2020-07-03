/*
 * @lc app=leetcode.cn id=589 lang=swift
 *
 * [589] N叉树的前序遍历
 */

// @lc code=start
/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var children: [Node]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.children = []
 *     }
 * }
 */

class Solution {
    func preorder(_ root: Node?) -> [Int] {
        guard root != nil  else { return [Int]() }
        var stack = [Node]()
        var res = [Int]()
        
        stack.append(root!)
        while !stack.isEmpty {
            var current = stack.removeLast()
            res.append(current.val)
            var children = current.children
            stack += children.reversed()
        }
        return res
    }
}
// @lc code=end

