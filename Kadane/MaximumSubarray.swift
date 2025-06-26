class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = -10000
        var localSum = -10000

        for num in nums {
            if localSum < 0 {
                localSum = 0
            }
            localSum += num
            maxSum = max(maxSum, localSum)
        }

        return maxSum
    }
}