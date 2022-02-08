class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var start = 0
        var end = nums.count - 1
        var mid = (start + end) / 2
        while(start <= end) {
            if nums[mid] == target {
                return mid
            }
            
            if nums[mid] > target {
                end = mid - 1
            } else {
                start = mid + 1
            }
            mid = (start + end) / 2
        }
        if nums[mid] > target {
            return (mid - 1 < 0 ? 0 : mid - 1)
        } else {
            return mid + 1
        }
    }
}