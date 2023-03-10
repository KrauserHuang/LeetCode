//class Solution {
//    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
//        nums = nums.filter { $0 != val }
//        return nums.count
//    }
//}

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var i = 0
        for num in nums {
            guard num != val else { continue }
            nums[i] = num
            i += 1
        }
        return i
    }
}
