/*
 * @lc app=leetcode.cn id=70 lang=swift
 *
 * [70] 爬楼梯
 */

// @lc code=start
class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n < 4 { return n }
        var arr = Array(repeating: 1, count: n+1)
    
        arr[2] = 2
        arr[3] = 3
        for i in (4...n) {
            arr[i] = arr[i-1] + arr[i-2]
        }
    
        return arr[n]
    }
}
// @lc code=end

