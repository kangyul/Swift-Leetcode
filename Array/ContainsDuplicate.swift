class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var map: [Int: Int] = [:]

        for num in nums {
            if map[num] != nil {
                return true
            } 
            map[num] = 0
        }

        return false
    }
}