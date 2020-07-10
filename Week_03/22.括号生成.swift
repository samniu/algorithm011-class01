/*
 * @lc app=leetcode.cn id=22 lang=swift
 *
 * [22] 括号生成
 */

// @lc code=start
class Solution {
    var ans = [String]()
    func generateParenthesis(_ n: Int) -> [String] {
        generate(left: 0, right: 0, max: n, current: "")
        return ans
    }

    func generate(left: Int, right: Int, max: Int, current: String) {
        if left == max && right == max {
            ans.append(current)
            return
        }
        
        if left < max {
            generate(left: left + 1, right: right, max: max, current: current + "(")
        }

        if left > right {
            generate(left: left, right: right + 1, max: max, current: current + ")")
        }
    }
}
// @lc code=end

