/*
 * @lc app=leetcode.cn id=860 lang=swift
 *
 * [860] 柠檬水找零
 */

// @lc code=start
class Solution {
    func lemonadeChange(_ bills: [Int]) -> Bool {
        var five = 0
        var ten = 0
        for i in bills {
            if i == 5 {
                five += 1
            }else if i == 10 {
                five -= 1
                ten += 1
            }else if i == 20 {
                if ten > 0 {
                    ten -= 1
                    five -= 1
                }else {
                    five -= 3
                }
            }

            if five < 0 {
                return false
            }
        }

        return true
    }
}
// @lc code=end

