/*
 * @lc app=leetcode.cn id=189 lang=swift
 *
 * [189] 旋转数组
 */

// @lc code=start
class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var temp: Int
        var previous: Int
        for i in 0..<k {
            previous = nums[nums.count - 1]
            for j in 0..<nums.count {
                temp = nums[j]
                nums[j] = previous
                previous = temp
            }
        }
    }
}
// @lc code=end

