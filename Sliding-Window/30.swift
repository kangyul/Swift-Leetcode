class Solution {
    func findSubstring(_ s: String, _ words: [String]) -> [Int] {
        var need: [String:Int] = [:]
        let wLen = words[0].count
        let total = words.count

        let chars = Array(s)

        for w in words { need[w, default: 0] += 1} 
        var ans: [Int] = []

        for shift in 0..<wLen {
            var left = shift, right = shift
            var have: [String:Int] = [:]
            var matched = 0

            while right + wLen <= s.count {
                let word = String(chars[right ..< right + wLen])
                right += wLen

                if need[word] == nil {
                    have.removeAll(keepingCapacity: true)
                    matched = 0
                    left = right
                    continue
                }

                have[word, default: 0] += 1
                matched += 1

                while let hv = have[word], let nd = need[word], hv > nd {
                    let leftWord = String(chars[left..<left+wLen]) 
                    have[leftWord]! -= 1
                    matched -= 1
                    left += wLen
                }

                if matched == total {
                    ans.append(left)
                    let leftWord = String(chars[left ..< left+wLen])
                    have[leftWord]! -= 1
                    matched -= 1
                    left += wLen
                }
            }
        }

        return ans
    }
}