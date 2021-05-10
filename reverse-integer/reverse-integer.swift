class Solution {
    func reverse(_ x: Int) -> Int {
        let stringValue = String(x)
        var value = String(stringValue.reversed())
        if stringValue.hasPrefix("-") {
            value.removeLast()
            value.insert("-", at: value.startIndex)
        }
        if let intValue = Int32(value) {
            return Int(intValue)
        }
        return 0
    }
}