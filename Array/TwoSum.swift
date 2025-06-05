class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict: [Int : Int] = [:]

        for (i, num) in nums.enumerated() {
            if let value = dict[target - num] {
                return [value, i]
            }

            dict[num] = i
        }

        fatalError("No valid answers")
    }
}