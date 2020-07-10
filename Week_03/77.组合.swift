/*
 * @lc app=leetcode.cn id=77 lang=swift
 *
 * [77] 组合
 */

// @lc code=start
class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var res = [[Int]]()
        var temp = [Int]()

        helper(&res, &temp, 0, n, k)

        return res
    }

    func helper(_ res: inout [[Int]], _ temp: inout [Int], _ start: Int, _ n: Int, _ k: Int) {
        if k == 0 {
            res.append(temp)
            return
        }

        var i: Int = start

        while k < (n - i + 1) {
            temp.append(i + 1)
            helper(&res, &temp, i + 1, n, k - 1)
            temp.removeLast()

            i += 1
        }
    }
}
// @lc code=end

