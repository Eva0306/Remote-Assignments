//: [Previous Part1 : Git & GitHub](@previous)
//:
//: # Part2 : Basic
/*:
 1. Please explain the difference between let and var .
 
    var 為變數(variable)，let為常數(constant)
 
    一旦使用let宣告，被宣告的值就不能改變
 
    而var的值可於宣告後改變
 
    在編程中，若已知一變量無需被改變，則可優先使用let，提高程式碼的安全性，以防意外被修改
 
 ---
 2. In Swift, we usually define a variable through the syntax as below:
 
    var x: Int = 10.
 
    We use the formula: 2 * radius * pi to calculate the circumference. Now, please define a variable pi and assign a value to it. You can refer to the syntax above while thinking about using var or let and which data type it should be.
 
    let pi:Double = 3.1415926
 
    因pi為固定不變之數，故可使用let進行宣告
 
 ---
 3. Declare two constants x and y of type Int then assign any value to them. After that, please calculate the average of x and y and store the result in a constant named average.
 
    let x: Int = 20
 
    let y: Int = 10
 
    let average = (x+y)/2

 ---
 4. Following Q3, now we want to save the average in a record system, but the system doesn’t accept 65 but 65.0.
 
    ● Please solve this problem so that we can put the average in the record
 system.
 
    ● Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).
 
    String(format: "%.1f", Float(average))
 
    10/3，其型別為Int，為整數除整數，小數點後部分會被無條件捨去，得出結果為3
 
    10.0/3.0，其型別為Double，為浮點數除浮點數，保留了小數點後的部分，得出結果為3.333333...
 
 ---
 5. Declare two constants that values are 10 and 3 each, then please calculate the remainder and save the result in a constant named remainder .
 
    let x = 10
 
    let y = 3
 
    let remainder = x%3
 
 ---
 6. Swift is a very powerful language that can infer the data type for you (Type Inference) while we still need to know the basics well. Please change the following codes into the ones with the type annotation.
 
    Ex: var x = 10 => var x: Int = 10
    ```
    var flag = true
    var inputString = "Hello world."
    let bitsInBite = 8
    let averageScore = 86.8
    ```
 
    var flag: Bool = true

    var inputString: String = "Hello world."
 
    let bitsInBite: Int = 8
 
    let averageScore: Double = 86.8
 
 ---
 7. What is Type Inference in Swift?
 
    宣告變數時我們會用var x: Int = 10，來指定x的型別為Int，但若宣告變數時沒有指定型別(例：var x = 10)，Swift會自動透過Type Inference找出合適的型別給該變數，例子中的x型別Swift就會推斷為Int，在編程時，若不確定該變數的型別，也可長按option鍵並點選該變數，查看Swift推斷該變數的型別
 
 ---
 8. What is the issue about this piece of code?
 
    ```
    var phoneNumber = 0987654321
 
    phoneNumber = "Hello world."
    ```
 
    在一開始phoneNumber這個變數被宣告為Int，如Q7所言，Swift會自動推斷，若後續同一變數想要assign其他型別，如例中的"Hello world"為String，系統就會出現Error
 
 ---
 9. Compound assignment operators are very useful when programming. Please declare a variable salary with initial value 22000, and use unary plus operator adding 28000 to salary, so it will be 50000 after this process.
 
    var salary = 22000
 
    salary += 28000
 
 ---

 10. You should notice that ‘=’ has a different meaning in programming. In the real world, ‘=’ means equal while in programming, ‘=’ means assign . You simply put the right hand side data into the left hand side variable or constant. Now please write down the Equality operator in Swift.
 
 - ==
 
 */
//: [Next Part3 : Collection](@next)
