/*
 * @lc app=leetcode.cn id=429 lang=swift
 *
 * [429] N叉树的层序遍历
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
    func levelOrder(_ root: Node?) -> [[Int]] {
        guard let root = root else { return [] }
        var queue = [root]
        var res = [[Int]]()

        while !queue.isEmpty{
            let level = queue
            queue = []
            var levelRes = [Int]()
            for node in level {
                queue.append(contentsOf: node.children)
                levelRes.append(node.val)
            }
            res.append(levelRes)
        }
        return res
    }
}
// @lc code=end

