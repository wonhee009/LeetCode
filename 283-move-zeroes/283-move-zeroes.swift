class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var writeIndex = 0
        var numberOfZeros = 0
        for i in 0..<nums.count {
            if nums[i] == 0 {
                numberOfZeros += 1
            } else {
                nums[writeIndex] = nums[i]
                writeIndex += 1
            }
        }
        
        for i in (nums.count-numberOfZeros..<nums.count).reversed() {
            nums[i] = 0
        }
    }
}