class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var res: [[Int]] = []
        var sorted = nums.sorted()

        for (i, n) in sorted.enumerated() {
            if i > 0 && sorted[i-1] == n {
                continue
            }

            var l = i+1, r = sorted.count-1

            while l < r {
                var threeSum = n + sorted[l] + sorted[r]

                if threeSum > 0 {
                    r -= 1
                } else if threeSum < 0 {
                    l += 1
                } else {
                    res.append([n, sorted[l], sorted[r]])
                    l += 1
                    while sorted[l] == sorted[l-1] && l < r {
                        l += 1
                    }
                }
            }
        }

        return res
    }   
}