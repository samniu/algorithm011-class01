/*
 * @lc app=leetcode.cn id=122 lang=swift
 *
 * [122] 买卖股票的最佳时机 II
 */

// @lc code=start
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        for i in 1..<prices.count {
            let tmp = prices[i] - prices[i-1]
            profit += tmp > 0 ? tmp:0
        }
        return profit
    }
}
// @lc code=end

