class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var sum = nums.reduce(0, +)
        var total_left = 0
        for i in 0 ... nums.count-1 {
            var value = nums[i]
            var total_right = sum - total_left - value
            if total_left == total_right {
                return i
            }
            total_left += value
        }
        return -1
    }
}