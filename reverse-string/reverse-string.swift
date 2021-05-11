class Solution {
    func reverseString(_ s: inout [Character]) {
        for index in 0..<s.count / 2 {
            s.swapAt(index, s.count - index - 1)
        }
    }
}