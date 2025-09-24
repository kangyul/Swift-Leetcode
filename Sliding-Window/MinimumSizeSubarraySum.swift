class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var l = 0
        var total = 0
        var res = Int.max

        for r in 0..<nums.count {
            total += nums[r]
            while total >= target {
                res = min(res, (r - l + 1))
                total -= nums[l]
                l += 1
            }
        }

        if res == Int.max {
            return 0
        } else {
            return Int(res)
        }
    }
}