/*
 * @lc app=leetcode.cn id=242 lang=swift
 *
 * [242] 有效的字母异位词
 */

// @lc code=start
class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        let sCharFreq = Dictionary(s.map { ($0, 1)}, uniquingKeysWith: +)
        let tCharsFreq = Dictionary(t.map { ($0, 1)}, uniquingKeysWith: +)
                
        return sCharFreq == tCharsFreq
    }
}
// @lc code=end

