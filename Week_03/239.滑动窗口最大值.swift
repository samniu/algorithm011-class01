/*
 * @lc app=leetcode.cn id=239 lang=swift
 *
 * [239] 滑动窗口最大值
 */

// @lc code=start
class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        guard nums.count > 0 else { return [] } 
        
        var result = [Int]()
        var maxi = -1
        
         for i in 0...nums.count - k {
            if i > maxi {
                maxi = i
                for j in i + 1 ..< i + k {
                    if nums[j] >= nums[maxi] {
                        maxi = j
                    }
                }
            } else {
                if nums[i + k - 1] >= nums[maxi] {
                    maxi = i + k - 1
                }
            }
            result.append(nums[maxi])
        }
        
        return result
    }
}
// @lc code=end

