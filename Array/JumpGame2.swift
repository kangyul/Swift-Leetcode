class Solution {
    func jump(_ nums: [Int]) -> Int {
        var l = 0
        var r = 0
        var minNumJumps = 0

        while r < nums.count - 1 {
            var farthest = 0
            for i in l...r {
                farthest = max(farthest, nums[i] + i)
            }
            l = r
            r = farthest
            minNumJumps += 1
        }

        return minNumJumps
    }
}