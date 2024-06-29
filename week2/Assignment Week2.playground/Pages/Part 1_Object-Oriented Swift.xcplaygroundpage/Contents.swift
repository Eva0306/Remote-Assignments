
//: ## Part 1: Object-Oriented Swift
/*:
 1. Declare a class Animal with a property gender and a method eat(). The data type of gender should be enum Gender as below and when you call eat() method, it will print “I eat everything!”
 */
class Animal {
    enum Gender {
        case male
        case female
        case undefined
    }
    func eat() {
        print("I eat everything!")
    }
}


/*:---
 2. Declare three classes: Elephant , Tiger , Horse that inherits from Animal and override the eat() method to print what they usually eat.
 */
class Elephant: Animal {
    
    override func eat() {
        print("I eat leaves!")
    }
}

class Tiger: Animal {
    
    override func eat() {
        print("I eat meat!")
    }
}

class Horse: Animal {
    override func eat() {
        print("I eat carrots!")
    }
}

/*:---
 3. Declare a class Zoo with a property weeklyHot which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Note that tiger , elephant , and horse are instances of class Tiger, Elephant, and Horse respectively.
 */
class Zoo {
    
    var weeklyHot: Animal
    
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
    
}

let zoo = Zoo(weeklyHot: Tiger())
print(zoo.weeklyHot)

let tiger = Tiger()
let elephant = Elephant()
let horse = Horse()

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse


/*:---
 4. What is an instance? What does Initilizer do in Class and Struct?
 
     instance，中文稱作實例/實體
     
     在前面我們建立了class Elephant、Tiger、Horse，這項是她已經有了一個架構，而我們需要一個實例才能夠使用它
     
     為此我們宣告了變數`tiger`、`elephant`、`horse`，分別讓這些類別能夠實例化
     
     而Initilizer初始器，使用它來實現初始化，以「啟動」class或struct等
     ```
     init() {
        //執行初始化
     }
     ```
     透過init，把class或struct都賦值的過程就稱啟動
     
     而在class或struct被啟動後，才能開始透過self存取自己的屬性和方法
     
     在struct有提供自動啟動，而class沒有
     
     因此在建立class時，一定要使用init來初始化類別

---
 5. What’s the difference between Struct and Class ?
 
    class 和 struct 都是定義之後可以生成特定結構的物件
 
    但還是有一些不一樣的地方
 
     ### Class
     * Reference Type
     * share data
     * 可以繼承 (Inheritance)
     * 初始化 Initializer 必須自己寫
     * 若自身 function 要修改內部的屬性不需要加mutating
     * 是會儲存在 Heap ，速度比較慢
     * 在 Multi-Threaded (多執行緒）上是相對不安全，因為物件共享
     * 在 assign value 時，是拷貝指標

     ### Struct
     * Value Type
     * copy data
     * 不可以繼承 (Inheritance)
     * 初始化 Initializer 可以自動產生(memberwise initializer)
     * 若自身 function 要修改內部的屬性需要加mutating
     * 是會儲存在 Stack ，速度比較快
     * 在 Multi-Threaded (多執行緒）上是相對安全，因為物件獨享
     * 在 assign value 時，是拷貝內容

---
 6. What’s the difference between reference type and value type ?
 
     ### Reference Type
     * 參考型別
     * share data
     * Class、Function、Closure
     * 每個實例共享資料的單一備份
     * 希望創建一個共享、可變動的狀態

     ### Value Type
     * 數值型別
     * copy data
     * Struct、Enum、Int、Double、String、Set、Tuple、Array、Dictionary
     * 每個實例保存資料一份獨立的備份
     * 希望副本有獨立狀態
     

---
 7. What’s the difference between instance method and type method ?
 
     ### Instance method
     * 實體方法
     * 定義在實例上，通過實例來呼叫
     * 用來存取和設置實體屬性或是提供實體需要的功能
     ```
     class Calculate{
        var count = 0
        func plusOne() {
            count += 1
        }
     
     let counter = Calculate() //建立實例
     
     counter.plusOne() //以實例呼叫方法
     ```

     ### Type method
     * 型別方法
     * 定義在類型上，通過類型本身來呼叫
     * 可以用`static`或`class`來定義
     * `static`用於struct、enum、class中的靜態方法；`class`只用class，並允許子類覆寫
     ```
     class Something{
        class func SomethingDeeper(){
            print(It's too deep.)
        }
     }
     
     Something.SomethingDeeper() //已方法呼叫方法
     ```

---
 8. What does self mean in an instance method and a type method respectively?
 
     self在類別class裡，代表目前的類別

     self在實例instance裡，代表目前的實例
     
     ```
     class Animal {
         var name: String
         
         init(name: String) {
             self.name = name
         }
         
         func instanceMethod() {
             print("\(self.name) is an instance method call.")
         }
         
         static var typeDescription: String = "This is a type method call."
         
         class func typeMethod() {
             print(self.typeDescription)
         }
     }
     
     let animal = Animal(name: "Elephant")
     animal.instanceMethod() // 輸出: Elephant is an instance method call.

     Animal.typeMethod() // 輸出: This is a type method call.
     
     ```
     綜合以上
     
     在`func instanceMethod()`這個instance method裡面的self就代表實例本身
     
     底下測試可以看到`self.name` = Elephant
     
     而在`static var typeDescription`這個type method裡面的self是代表類別本身
     
     底下測試可以看到`self.typeDescription` = "This is a type method call."
 
 */

//: [Next](@next)
