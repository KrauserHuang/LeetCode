import UIKit

let nums = [2, 7, 11, 15]
let target = 9

var num1 = Int()
var num2 = Int()

//for i in nums {
//    for j in nums {
//        num1 = nums[i]
//        num2 = nums[j]
//        print(num1)
//        print(num2)
//    }
//}

//for i in nums {
//    print(i)
//}

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    // 拿來儲存數字對應的index
    var dict = [Int: Int]()
    /*
     nums.enumerated()結果
     (0, 2)
     (1, 7)
     (2, 11)
     (3, 15)
     */
    for (index, num) in nums.enumerated() {
        // 先帶入(0, 2), anotherNum = 9 - 2 = 7
        // 接著帶入(1, 7), anotherNum = 9 - 7 = 2
        let anotherNum = target - num
        // 如果dict[7]這個key存在，則代表是你要找的值
        // 如果dict[2]這個key存在，則代表是你要找的值
        if dict[anotherNum] != nil, let anotherIndex = dict[anotherNum], anotherIndex != index {
            let anotherIndex = nums[anotherNum]
            // anotherIndex = nums[7] XXX不是這樣寫
            // nums[anotherIndex] = 7
//            let anotherIndex = nums[anotherNum]
//            let anotherIndex = dict[anotherNum]
            return [anotherIndex, index]
        } else {
            // 否則將2存入對應index(0) -> dict = [2: 0]
            dict[num] = index
        }
    }
    return []
}

let answer = twoSum([16, 8, 23, 4, 15], 19)
print(answer)
