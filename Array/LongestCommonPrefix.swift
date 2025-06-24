// idea
// sort the array in lexicographical way: the first element and the last element of the array will have most different prefixes of all comparisions that could be made between strings in the array
// compare these two elements to find the longestCommonPrefix

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var strs = strs.sorted()

        let firstWord = Array(strs[0])
        let lastWord = Array(strs[strs.count - 1])
        let length = min(firstWord.count, lastWord.count)

        var i = 0

        while i < length && firstWord[i] == lastWord[i] {
            i += 1
        }

        return String(firstWord[0..<i])
    }
}