/*
 * @lc app=leetcode.cn id=94 lang=swift
 *
 * [94] 二叉树的中序遍历
 */

// @lc code=start
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var res = [Int](), stack = [TreeNode](), node = root
        
        while node != nil || !stack.isEmpty {
            if let currentNode = node {
                stack.append(currentNode)
                node = currentNode.left
            } else {
                let prevNode = stack.removeLast()
                res.append(prevNode.val)
                node = prevNode.right
            }
        }
        
        return res
    }
}
// @lc code=end

