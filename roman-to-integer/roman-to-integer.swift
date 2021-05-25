class Solution {
        let symbol: [Character: Int] = [
        "I": 1,
        "V": 5,
        "X": 10,
        "L": 50,
        "C": 100,
        "D": 500,
        "M": 1000
    ]
    let dic: [Character : Character] = [
        "V": "I",
        "X": "I",
        "L": "X",
        "C": "X",
        "D": "C",
        "M": "C"
    ]
    
    func romanToInt(_ s: String) -> Int {
        var answer = 0
        var prev: Character? = nil
        for char in s {
            if let number = symbol[char] {
                answer += number
            }
            guard let pr = prev,
                  let p = dic[char],
                  let prevNumber = symbol[pr],
                  p == pr else {
                prev = char
                continue
            }
            answer -= (2 * prevNumber)
            prev = char
        }
        return answer
    }
}