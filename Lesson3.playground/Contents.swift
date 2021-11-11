import UIKit

//MARK: - Collections
//Array
let arrayOFStrings = ["a", "a", "b", "c", "d"]
print(arrayOFStrings[2])


let arrayOFChar: [Character] = ["a", "a", "b", "c", "d"]

var arrayOfIntegers: [Int] = []
var arrayOfInt = [Int]()


arrayOfIntegers = [1, 3, 4, 5, 6]
arrayOfIntegers = [1, 2, 3, 4, 5]

arrayOfIntegers += [6, 7]
arrayOfIntegers.append(8)

arrayOfIntegers.count
arrayOfIntegers.insert(9, at: 8)
arrayOfIntegers[5]

type(of: arrayOfIntegers)

let someArray = [10, 11]
var intArr = arrayOfIntegers + someArray

intArr[0] = 1
!intArr.isEmpty
intArr.remove(at: 5)
intArr.contains(7)

//MARK: - Set
let setOfString: Set = ["d", "f", "b", "c", "a"]
setOfString.contains("a")

setOfString.sorted()
setOfString.sorted(by: <)

var setOfChar: Set<Character> = []
setOfChar = ["e"]
setOfChar.insert("a")
setOfChar
setOfChar = []

type(of: setOfChar)

//MARK: - Dictionaries
var stringDict = Dictionary<String, String>()
var someDict = [String: Int]()
var anotheDict: [String: Bool] = [:]

var student = [
    "firstName":"A",
    "lastName": "M",
    "age": "34"
]


student["email"] = "a@2.lv"
student["email"] = "a@a.com"
student["firstName2"]

student.updateValue("", forKey: "firstName2")
student.removeValue(forKey: "firstName2")

student["age"] = nil
student.count
print(student)

//MARR: - For Loop
//print("1 x 10 is \(1 * 10)")
//print("2 x 10 is \(2 * 10)")
//print("3 x 10 is \(3 * 10)")
//print("4 x 10 is \(4 * 10)")
//print("5 x 10 is \(5 * 10)")
for i in 1...5 {
    print("\(i) * 10 = \(i * 10)")
}

for _ in 1...5 {
    print("Hello!")
}

let apples = ["red apple",
              "red apple",
              "green apple",
              "red apple",
              "green apple",
              "red apple"
]
apples.count
type(of: apples)

var basket = 0

for apple in apples {
    if apple == "red apple"{
        basket += 1
    }
}

print("I have \(basket) red apples in my basket")

let numberOfLegs = [
    "spider": 8,
    "dog": 4,
    "ant": 6
]

for (animalName, legsCount) in numberOfLegs {
    print("\(animalName) has \(legsCount)")
}

//MARK: - while
var countdown = 10

while countdown >= 0 {
    print("countdown: \(countdown)")
    countdown -= 1
}

var counter = 0

while true {
    print("Counter is now: \(counter)")
    counter += 1
    
    if counter == 20 {
        
        break
    }
}
