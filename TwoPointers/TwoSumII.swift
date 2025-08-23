class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var s = 0, e = numbers.count - 1

        var ans: [Int] = []

        while s < e {
            var sum = numbers[s] + numbers[e]
            if sum == target {
                ans.append(s+1)
                ans.append(e+1)
                break
            } else if sum > target {
                e -= 1
            } else {
                s += 1
            }
        }

        return ans
    }
}