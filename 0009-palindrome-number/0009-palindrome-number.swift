class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var num = x
        var temp=num
        var rev=0
        while(num>0){
            let dig = num % 10
            rev=rev*10+dig
            num = num / 10
        }
        return temp == rev
    }
}