/*
 * @lc app=leetcode.cn id=347 lang=swift
 *
 * [347] 前 K 个高频元素
 */

// @lc code=start
class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        let numFreq = Dictionary(nums.map { ($0, 1 ) }, uniquingKeysWith: +)
        print(numFreq.keys)
        
        let sortedNums = numFreq.keys.sorted {
            return numFreq[$0]! > numFreq[$1]!
        }

        return Array(sortedNums[0..<k])
    }
}
// @lc code=end

