class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var rotateNum = k % nums.count
        let suffix = nums.suffix(rotateNum)
        nums.insert(contentsOf: suffix, at: 0)
        nums = nums.dropLast(suffix.count)
    }
}