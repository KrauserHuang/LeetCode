/*
 題目：
 給予任意數，如果他的反方向數值一模一樣，則他為 palindrome，回傳 true
 
 ex:
 121，其 palindrome 也為121，回傳 true
 123，其 palindrome 為321，不一樣，回傳 false
 */

/*
 解題方向：
 先排除例外情況
 1. 負數
 2. 尾數為0
 */

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard abs(x) == x, x % 10 != 0 || x == 0 else { return false }
        
//        if x == 0 { return true }
        
        var revertedX = 0
        var y = x
        while y > revertedX {
            revertedX = revertedX * 10 + y % 10 //逆數 = 逆數 * 10 + 原數 % 10
            y = y / 10
            print("currentX:\(y), revertedX:\(revertedX)")
        }
        return y == revertedX || y == revertedX / 10
        
        
//        // Int 123456 -> String "123456"
//        let orgX = String(x)
//        // String "123456" -> String Array ["1", "2", "3", "4", "5", "6"]
//        let arrayX = Array(orgX)
//        var invertX: String = ""
//        // Get Invert String X (Invert String Array To invertX)
//        for index in 0 ... arrayX.count - 1
//        {
//            invertX = invertX + String(arrayX[arrayX.count - 1 - index])
//            print("index = " + String(index) + ", invertX = " +  invertX);
//        }
//        // Compare
//        if (orgX == invertX)
//        {
//            return true
//        }
//
//        return false
    }
}

let solution = Solution()
solution.isPalindrome(98789)
