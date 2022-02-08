class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var startIndex = 0
        var endIndex = nums.count - 1
        
        while(startIndex <= endIndex) {
            let midIndex = (startIndex + endIndex) / 2
            if nums[midIndex] == target {
                return midIndex
            }
            if nums[midIndex] > target {
                endIndex = midIndex - 1
            } else {
                startIndex = midIndex + 1
            }
        }
        
        return -1
    }
}