import Foundation

class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        var currentRow = 0
        var totalRows = 0
        var n = n

        while n > 0 { // 利用減法減去每一行所需coin，每新增一行，扣除該行coin數，當n被扣過頭，其前一個totalRows就為答案
            currentRow += 1
            n -= currentRow

            if n >= 0 {
                totalRows += 1
            }
        }

        return totalRows
    }
}

let solution = Solution()

solution.arrangeCoins(1)    // 1(v)
solution.arrangeCoins(20)   // 1, 3, 6, 10, 15(v), 21
