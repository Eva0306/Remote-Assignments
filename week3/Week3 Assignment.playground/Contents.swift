/*:
 1. What is a closure ? How to execute a closure?
 
 closure，中文翻作閉包，就像是一個函數，只是沒有名字
 
 但他無法獨立存在，需要指派給變數/常數，或當成參數傳入function
 
 在寫一些高階函數也常會使用到Closure，讓語法看起來更精簡
 
 宣告方式

 ```
 {(parameters) -> returnType in
 
 statements
 
 }
 ```
 
 ---
 2. Please declare a closure whose input type is Int, output type is Bool. The functionality of this closure is to verify if the input is odd or not. Return true if it’s odd and vice versa.
 */
let closure = {(num: Int) -> Bool in
    if num % 2 == 1 {
        return true
    } else {
        return false
    }
}
/*:---
 3. Please complete the following function that prints a triangle made of asterisks.
*/
func printTriangle(layers: Int){
    for i in 0..<layers {
        for j in 0...i {
            print("*",terminator: "")
        }
        print()
    }
}

