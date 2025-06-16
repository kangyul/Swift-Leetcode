class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var k: Int = 0

        for (idx, num) in nums.enumerated() {
            if num != 0 {
                nums[k] = num
                k += 1
            }
        }

        for i in k..<nums.count {
            nums[k] = 0
            k += 1
        }
    }
}