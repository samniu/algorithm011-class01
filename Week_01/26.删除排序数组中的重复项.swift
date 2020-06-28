/*
 * @lc app=leetcode.cn id=26 lang=swift
 *
 * [26] 删除排序数组中的重复项
 */

// @lc code=start
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 1 {
            return nums.count
        }
        var i = 0
        for j in (i + 1)...(nums.count - 1) {
            if nums[j] != nums[i] {
                i += 1
                nums[i] = nums[j]
            }            
        }
        return i + 1
    }
}
// @lc code=end

