/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var currentVersion = n - 1
        while(currentVersion >= 1) {
            if isBadVersion(currentVersion) {
                currentVersion -= 1
            } else {
                return currentVersion + 1
            }
        }
        return currentVersion + 1
    }
}