/*
 * @lc app=leetcode.cn id=49 lang=swift
 *
 * [49] 字母异位词分组
 */

// @lc code=start
class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var sortedStrToStrs = [String: [String]]()

        for str in strs {
            let sortedStr = String(str.sorted())

            sortedStrToStrs[sortedStr, default: []].append(str)
        }
        return Array(sortedStrToStrs.values)
    }
}
// @lc code=end

