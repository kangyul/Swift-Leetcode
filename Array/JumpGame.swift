class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var lastIndex = nums.count - 1
        var index = nums.count - 2

        while index >= 0 {
            if index + nums[index] >= lastIndex {
                lastIndex = index
            }
            index -= 1
        }

        return lastIndex == 0
    }
}