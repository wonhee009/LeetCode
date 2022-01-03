class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        let reversedDigits = digits.reversed()
        var extraAdd = true
        var answer: [Int] = []
        reversedDigits.forEach{ digit in
            if extraAdd && digit == 9 {
                answer.insert(0, at: 0)
            }
            else if extraAdd && digit != 9 {
                answer.insert(digit + 1, at: 0)
                extraAdd = false
            } 
            else {
                answer.insert(digit , at: 0)
            }
        }
        if extraAdd {
            answer.insert(1, at: 0)
        }
        return answer
    }
}