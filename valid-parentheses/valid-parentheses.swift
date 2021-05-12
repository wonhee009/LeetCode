class Solution {
    let start = "([{"
    let end = ")]}"
    let matchs = [
        ")" : "(",
        "]" : "[",
        "}" : "{"
    ]
    func isValid(_ s: String) -> Bool {
        let characters = s.map { String($0) }
        var stack: [String] = []
        for c in characters {
            if start.contains(c) {
                guard let lastStack = stack.last else {
                    stack.append(c)
                    continue
                }
                if end.contains(lastStack) {
                    return false
                }
                stack.append(c)
            } else if end.contains(c) {
                guard let lastStack = stack.last else {
                    return false
                }
                if matchs[c] == lastStack {
                    stack.popLast()
                    continue
                }
                return false
            }
        }
        
        return stack.isEmpty ? true : false
    }
}