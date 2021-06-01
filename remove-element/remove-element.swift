class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        guard nums.isEmpty == false else { return 0 }
        nums.removeAll { $0 == val }
        
        return nums.count
    }
}