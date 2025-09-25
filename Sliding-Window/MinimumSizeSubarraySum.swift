class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var l = 0, sum = 0
        var result = Int.max

        for r in 0..<nums.count {
            sum += nums[r]
            while sum >= target {
                result = min(result, r - l + 1)
                sum -= nums[l]
                l += 1
            }
        }

        return result == Int.max ? 0 : result
    }
}