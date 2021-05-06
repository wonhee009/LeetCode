class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var indexDic: [Int: Int] = [:]
        var answer: [Int] = []
        for (index, num) in nums.enumerated() {
            indexDic[num] = index
        }
        for (index, num) in nums.enumerated() {
            guard let answerIndex = indexDic[target - num],
                  index != answerIndex else {
                continue
            }
            answer.append(index)
            answer.append(answerIndex)
            break
        }
        return answer
    }
}