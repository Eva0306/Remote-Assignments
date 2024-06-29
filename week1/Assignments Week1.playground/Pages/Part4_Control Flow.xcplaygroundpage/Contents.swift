//: [Previous Part3 : Collection](@previous)
//: # Part4 : Control Flow
/*:
 1. Here is an array:
 */
    let lottoNumbers = [10, 9, 8, 7, 6, 5]
//: Please use For-In loop and Range to print the last three members in the .lottoNumbers. array.
    for i in lottoNumbers.count-3..<lottoNumbers.count {
        print (lottoNumbers[i])
    }
/*:
 ---
 2. Please use a for-in loop to print the results as the images listed below respectively (through .lottoNumbers.):
 
    ````
    5
    6
    7
    8
    9
    10
    ````
 
    ````
    10
    8
    6
    ````
 */
    for i in (0...lottoNumbers.count-1).reversed(){
        print(lottoNumbers[i])
    }

    for i in (0...lottoNumbers.count-1) where lottoNumbers[i] % 2 == 0 {
        print(lottoNumbers[i])
    }

/*:
 ---
 3. Please use a while loop to solve the Q2.
 */
    var i = lottoNumbers.count-1
    while i >= 0 {
        print (lottoNumbers[i])
        i -= 1
    }

    var j = 0
    while j < lottoNumbers.count {
        if lottoNumbers[j] % 2 == 0{
            print(lottoNumbers[j])
        }
        j += 1
    }
/*:
 ---
 4. Please use a repeat-while loop to solve Q2.
 */
    i = lottoNumbers.count-1
    repeat {
        print (lottoNumbers[i])
        i -= 1
    } while i >= 0

    j = 0
    repeat{
        if lottoNumbers[j] % 2 == 0{
            print(lottoNumbers[j])
        }
        j += 1
    }while j < lottoNumbers.count
/*:
 ---
 5. What are the differences between while and repeat-while?
 
    while 會檢核條件在迴圈執行之前，才開始執行
 
    而repeat-while會檢核條件在迴圈執行之後，才決定哪時候停止
 
 ---
 6. Declare a variable isRaining to record the weather. Please write a statement that if the weather is raining, print “It’s raining, I don’t want to work today.”, otherwise print “Although it’s sunny, I still don’t want to work today.”
 */
    var isRaining: Bool = true

    if isRaining == true {
        print("It’s raining, I don’t want to work today.")
    } else {
        print("Although it’s sunny, I still don’t want to work today.")
    }

/*:
 ---
 7. In a company, we might use numbers to represent job levels. Let’s make an example. We use 1 for the Member, 2 for Team Leader, 3 for Manager, and 4 for Director. Now, declare a variable named jobLevel and assign a number to it. If the jobLevel number is in our list, print the relative job title name; if not, just print “We don't have this job”. Please use the if-else statement and the switch statement to complete this requirement separately.
 */
    var jobLevel = 2
    if jobLevel == 1 {
        print("Member")
    } else if jobLevel == 2 {
        print("Team Leader")
    } else if jobLevel == 3 {
        print("Manager")
    } else if jobLevel == 4 {
        print("Director")
    } else {
        print("We don't have this job")
    ㄑ}
 
//: [Next Part5 : Function](@next)
