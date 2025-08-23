class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0, right = height.count - 1
        var maxWater = -1

        while left < right {
            var lowerHeight = min(height[left], height[right])

            var currArea = lowerHeight * (right - left)
            maxWater = max(currArea, maxWater)

            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }

        return maxWater
    }
}