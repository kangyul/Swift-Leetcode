class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var l = 0
        var seen: Set<Character> = []
        let arr = Array(s)
        var maxLength = 0

        for r in 0..<arr.count {
            while seen.contains(arr[r]) {
                seen.remove(arr[l])
                l += 1
            }
            maxLength = max(maxLength, r - l + 1)
            seen.insert(arr[r])
        }

        return maxLength
    }
}