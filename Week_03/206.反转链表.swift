/*
 * @lc app=leetcode.cn id=206 lang=swift
 *
 * [206] 反转链表
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        // terminator
        if head == nil { return nil}
        if head?.next == nil {
            return head
        }

        let newHead = reverseList(head?.next)

        head?.next?.next = head // 2.next = 1
        head?.next = nil   // 1.next = nil

        return newHead
    }
}
// @lc code=end

