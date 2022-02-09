class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        return nums.map{ num in
            return num * num
        }.sorted()
    }
}