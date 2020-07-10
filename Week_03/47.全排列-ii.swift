/*
 * @lc app=leetcode.cn id=47 lang=swift
 *
 * [47] 全排列 II
 */

// @lc code=start
class Solution {
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        var track = [Int]()
        var used = [Bool](repeating: false, count: nums.count)
        backtrack(nums, track: &track, used: &used, res: &res)
        return res        
    }

    func backtrack(_ nums: [Int], track: inout [Int], used: inout [Bool], res: inout [[Int]]) {
        if track.count == nums.count {
            let r = track
            res.append(r)
            return
        }

        for (i, num) in nums.enumerated() {
            if used[i] { continue }

            if i > 0 && num == nums[i - 1] && !used[i - 1] {
                continue
            }
            used[i] = true
            track.append(num)
            backtrack(nums, track: &track, used: &used, res: &res)
            track.removeLast()
            used[i] = false
        }
    }    
}
// @lc code=end

