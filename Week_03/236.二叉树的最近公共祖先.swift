/*
 * @lc app=leetcode.cn id=236 lang=swift
 *
 * [236] 二叉树的最近公共祖先
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
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return nil
        }
        let v1 = p?.val
        let v2 = q?.val
        if v1 == root.val || v2 == root.val {
            return root
        }

        let left = lowestCommonAncestor(root.left, p, q)
        let right = lowestCommonAncestor(root.right, p, q)

        if left != nil && right != nil {
            return root
        }

        return left == nil ? right : left
    }
}
// @lc code=end

