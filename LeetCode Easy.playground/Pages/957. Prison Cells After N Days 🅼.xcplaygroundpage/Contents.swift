import Foundation

class Solution {
    func prisonAfterNDays(_ cells: [Int], _ n: Int) -> [Int] {
        var currentState = cells    // 儲存當下監獄狀態
        var nextState = cells       // 轉換當下狀態到下一個狀態
        var totalCellsCount = currentState.count
        var day = 0
        var state: [[Int]: Int] = [:]

        while day < n {
            for (index, _) in currentState.enumerated() where index > 0 && index < totalCellsCount - 1 { // 排除判斷第一個跟最後一個
                let prevDay = currentState[index - 1]
                let nextDay = currentState[index + 1]
                if prevDay == nextDay { // 不管兩個都是0還是1
                    nextState[index] = 1
                } else {
                    nextState[index] = 0
                }
            }
            nextState[0] = 0
            nextState[totalCellsCount - 1] = 0
            
            if let seenDay = state[nextState] { // 這裡的key是儲存監獄cells的狀態
                print("\n=================\n")
                print("seenDay = \(seenDay)")
                let period = day - seenDay
                let remainder = (n - day) % period
                return prisonAfterNDays(currentState, remainder)
            }
            state[currentState] = day // 一開始沒重複的key(currentState)都會存進去state裡
            
            currentState = nextState // 最後將下一天的狀態存進當下狀態來做下一次的迭代
            day += 1
            print("Day \(day) = \(currentState)")
        }
        return nextState
    }
}

let solution = Solution()
//solution.prisonAfterNDays([0, 1, 0, 1, 1, 0, 0, 1], 15)
solution.prisonAfterNDays([1,0,0,1,0,0,1,0], 1000000000)
