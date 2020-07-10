/*
 * @lc app=leetcode.cn id=105 lang=swift
 *
 * [105] 从前序与中序遍历序列构造二叉树
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
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        if inorder.count == 0 {
            return nil
        }
        let root = TreeNode(preorder[0])
        if inorder.count > 1 {
            for (index, num) in inorder.enumerated() {
                if num == preorder[0] {
                    if index > 0 {
                        root.left = buildTree(Array(preorder[1...index]), Array(inorder[0...(index-1)]))
                    }
                    if index < inorder.count - 1 {
                        root.right = buildTree(Array(preorder[(index + 1)...(inorder.count - 1)]), Array(inorder[(index + 1)...(inorder.count - 1)]))
                    }
                }
            }
        }
        return root      
    }
}
// @lc code=end

