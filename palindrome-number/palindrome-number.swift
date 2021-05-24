class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        let str = String(x)
        for index in 0..<str.count / 2 {
            if str[str.index(str.startIndex, offsetBy: index)] != str[str.index(str.startIndex, offsetBy: str.count - index - 1)] {
                return false
            }
        }
        return true
        
    }
}