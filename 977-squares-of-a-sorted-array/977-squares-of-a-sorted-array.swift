class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        let doubleNums = nums.map { $0 * $0 }
        var left = 0
        var right = nums.count - 1
        var count = nums.count - 1
        var result = Array(repeating: 0, count: nums.count)
        while count >= 0 {
            if doubleNums[left] > doubleNums[right] {
                result[count] = doubleNums[left]
                left += 1
            } else {
                result[count] = doubleNums[right]
                right -= 1
            }
            
            count -= 1
        }
        return result
    }
}