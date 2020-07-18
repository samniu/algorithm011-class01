/*
 * @lc app=leetcode.cn id=455 lang=swift
 *
 * [455] 分发饼干
 */

// @lc code=start
class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var sortG = g.sorted()
        var sortS = s.sorted()
        var res = 0

        var j = 0
        while res < sortG.count && j < sortS.count {
            if sortS[j] >= sortG[res] {
                res += 1
            }
            j += 1
        }
        return res
    }
}
// @lc code=end

