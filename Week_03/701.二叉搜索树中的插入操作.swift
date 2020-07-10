/*
 * @lc app=leetcode.cn id=701 lang=swift
 *
 * [701] 二叉搜索树中的插入操作
 */

// @lc code=start
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        return insert(root, val)
    }

    func insert(_ node: TreeNode?, _ val: Int) -> TreeNode? {
        guard var node = node else {
            return TreeNode(val)
        }

        if node.val < val {
            node.right = insert(node.right, val)
        } else {
            node.left = insert(node.left, val)
        }

        return node
    }
}
// @lc code=end

