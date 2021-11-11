import UIKit

//MARK: - If, esle conditional statements
// if condition {
//  some code
// }
var myNumber = 5

if myNumber > 4 {
    if myNumber > 6 {
        print("the condition is true")
    }else {
        print("the condition is false")
    }
}

if myNumber > 4 && myNumber < 0 {
    print("the condition is true")
}else if myNumber < 3 {
    print("2nd condition is true")
}else if myNumber == 6 {
    print("3rd condition is true")
}else{
    print("4th condition is true")
}

//MARK: - switch, case conditional statements
let letter = "C"

switch letter {
case "a", "A":
    print("my letter is a")
case "b", "B":
    print("my letter is b")
case "c", "C":
    print("my letter is c")
default://else
    print("none of my letter is c")
}


let planetCount = 8
var countName = ""

switch planetCount{
case 0:
    countName = "none"
case 1:
    countName = "one"
case 1...4:
    countName = "a few"
case 5...11:
    countName = "several"
case 12...99:
    countName = "dozen of"
default:
    countName = "many"
}


let level: Character = "A"

switch level {
case "A":
    print("I can acces only the level A")
    fallthrough
case "B":
    print("I can acces only the level B")
    fallthrough
case "C":
    print("I can access only the level C")
    fallthrough
default:
    break
}


//MARK: - Optionals
var stringNumber = "132"
var convertToInt = Int(stringNumber)
print(convertToInt ?? 0)

if convertToInt != nil {
    print("convertToInt contains: \(convertToInt ?? 0)")
}

let optionalStr: String? = "100"

if let str = optionalStr, let myInt = Int(str){
    print("Int: \(myInt)")
}


//if let str = optionalStr {
//    let myInt = Int(str)
//    if myInt != nil{
//        print("Int: \(myInt ?? 0)")
//    }
//}
