class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var arr = Array(s)
        var loop = Array(t)
        for item in loop {
            if !arr.contains(item) {
                continue
            }
            if arr[0] == item {
                arr.remove(at: 0)
            }
        }
        return arr.count == 0
    }
}