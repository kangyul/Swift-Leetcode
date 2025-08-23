class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var sPtr = 0, tPtr = 0
        let sArr = Array(s), tArr = Array(t)

        while sPtr < s.count && tPtr < t.count {
            if sArr[sPtr] == tArr[tPtr] {
                sPtr += 1
            }
            tPtr += 1
        }

        return sPtr == s.count
    }
}