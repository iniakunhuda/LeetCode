class Solution {
    func runningSum(_ nums: [Int]) -> [Int]{
        var result : [Int] = []
        var total = 0
        for num in nums {
            var last_val = 0
            if !result.isEmpty {
                last_val = result[result.count-1]
            } 
            result.append(last_val + num)
        }
        return result
    }
}