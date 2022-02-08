/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var start = 0
        var end = n - 1
        var mid = (start + end) / 2
        while(start <= end) {
            if isBadVersion(mid) {
                end = mid - 1
            } else {
                start = mid + 1
            }
            mid = (start + end) / 2
        }
        return mid + 1
    }
}