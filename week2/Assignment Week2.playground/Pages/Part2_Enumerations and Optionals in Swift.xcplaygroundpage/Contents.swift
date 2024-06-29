//: [Previous](@previous)

//: ## Part 2: Enumerations and Optionals in Swift
/*:
 1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to model them.
 
     ● Please declare an enum named Gasoline to model gasoline.
     
     ● Every kind of gasoline has its price. Please declare a computed property named price and a method named getPrice separately in Gasoline enum that both will return different prices depending on different gasoline.
     
     ● Please establish raw values for . The data type of raw value should be String. For example, should be “92”.
     
     ● Please explain what enum associated value is and how it works.
 */
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    
    var price: Double {
        switch self {
        case .oil92:
            return 29.1
        case .oil95:
            return 30.6
        case .oil98:
            return 32.6
        }
    }
    
    func getPrice () -> Double {
        return self.price
    }
}

/*:
 以下是一組使用associated value的enum
 
```
     enum Barcode {
         case upc(Int, Int, Int, Int)
         case qrCode(String)
     }
```
 若要建立一個upc條碼
 ```
 let productBarcode = Barcode.upc(8, 85909, 51226, 3)
 ```
 
 * 能在在產生enum資料時設定associated value，而非像raw value只能在定義enum時指定，之後不能更改
 
 * associated value能與多個value相關聯，raw value只能一對一
 
 * associated value可以是任何型別，甚至是類別生成的物件，raw value只能搭配 String、Int等基本型別

---
 2. Optional is a very special data type in Swift. Take `var a: Int? = 10` for example, the value of `a` will be nil or Int . You should have learned how to deal with Optional.
 
     ● People would like to have pets, but not everyone could have one. Declare a class Pet with name property and a class People with pet property which will store a Pet instance or nil. Please try to figure out what data type is suitable for these properties in Pet and People.
     
     ● Please create a People instance. Use guard let to unwrap the pet property and print its name.
     
     ● Please create another People instance. Use if let to unwrap the pet property and print its name.
 */
class Pet {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
class People {
    var pet: Pet?
    
    init(pet: Pet? = nil) {
        self.pet = pet
    }
}

func printPetNameForGuardLet (for person: People) {
    guard let pet = person.pet else {
        print("This person does not have a pet.")
        return
    }
    print("This person's pet called \(pet.name)")
}

func printPetNameForIfLet (for person: People) {
    if let pet = person.pet {
        print("This person's pet called \(pet.name)")
    }
    print("This person does not have a pet.")
}

let myPet = Pet(name: "Lulu")
let person1 = People(pet: myPet)
let person2 = People()

printPetNameForGuardLet(for: person1)
printPetNameForIfLet(for: person2)


//: [Next](@next)
