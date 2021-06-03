class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        guard let firstNumber = nums.first else { return 0 }
        guard target > firstNumber else { return 0 }
        for (index, value) in nums.enumerated() {
            if target <= value {
                return index
            }
        }
        return nums.count
    }
}