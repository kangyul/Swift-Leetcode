class Solution {
    func isPalindrome(_ str: String) -> Bool {
        var s = 0, e = str.count - 1
        let sChars = Array(str.lowercased())

        while s < e {
            while !sChars[s].isAlphanumeric && s < e {
                s += 1
            }

            while !sChars[e].isAlphanumeric && s < e {
                e -= 1
            }

            if sChars[s] != sChars[e] {
                return false
            } 

            s += 1
            e -= 1
        }

        return true
    }
}

extension Character {
    var isAlphanumeric: Bool {
        return isNumber || isLetter
    }
}