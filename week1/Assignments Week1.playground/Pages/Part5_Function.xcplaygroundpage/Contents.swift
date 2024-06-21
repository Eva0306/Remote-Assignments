//: [Previous Part4 : Control Flow](@previous)
//: # Part5 : Function
/*:
 1. What are the return types in the following statements?
 
    ````
    func birthday( ) -> String {
    }
    
    func payment( ) -> Double {
    }
    ````
    func birthday() 會回傳 String Type，字串
    
    func payment() 則會回傳 Double Type，浮點數
 
 ---
 2. Please declare a function named multiply with two arguments a and b . This function won’t return any value and will only print out the result of a * b . Be noticed that we want to give the argument b a default value of 10.
 */
    func multiply (num1 a:Int ,num2 b:Int = 10) {
        print(a * b)
    }

/*:
 ---
 3. What’s the difference between argument label and parameter name in a function?

    argument label和parameter name簡單來說是參數的名字
 
    argument label是function外部的名字，而parameter name是function內部的名字
 
    在Swift中，一定要給定parameter name
 
    在呼叫function時，以上題為範例會使用
    ````
    multiply(a=5, b=3)
    ````
    去做呼叫，而這時的augument label 和parameter name是一樣的，所以看不出差異
 
    因Swift會為預設argument label和parameter name為一致，若沒特別給定argument label
 
    也可以自訂，在原本parameter name前加上即可
    ```
    func multiply (num1 a:Int ,num2 b:Int = 10) {
        print(a * b)
    }
    ```
    而此時在外部呼叫此函數時就需使用
    ```
    multiply(num1 = 5, num2 = 3)
    ```
    使用此的好處在於增加程式碼的可讀性，一眼就能看出此參數代表了什麼

 ---
 4. Please declare a function named greet with person as an argument label and name as a parameter name. This greet function will return a String. For example, if you call the function greet like this:
    ````
    greet(person: "Luke")
    ````
 
    It will return the string: “Hello, Luke”.
 */
    func greet (person name: String) -> String {
        return "Hello, \(name)"
    }
 

