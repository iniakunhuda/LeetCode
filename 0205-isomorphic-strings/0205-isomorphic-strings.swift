class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var history: [String: String] = [:]
        var arrS = Array(s)
        var arrT = Array(t)
        for idx in 0...(s.count-1) {
            var key = String(arrS[idx])
            var val = String(arrT[idx])
            if history.keys.contains(key) || history.values.contains(val) {
                if history[key] != val {
                    return false
                }
            }
            history[key] = val
        }
        return true
    }
}