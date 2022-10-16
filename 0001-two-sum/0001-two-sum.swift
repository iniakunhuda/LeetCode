class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var res: [Int] = []
    
        // pakai konsep hashmap
        // cek kalau sisa dikurangin ada di seen, return [idx_now, seen[sisa]]

        var seen : [Int: Int] = [:]
            for (i, num) in nums.enumerated() {
            let sisa = target - num
            if seen.keys.contains(sisa) {
                res.append(i)
                res.append(seen[sisa]!)
            }
            seen[num] = i
        }

        return res.sorted()
    }
}