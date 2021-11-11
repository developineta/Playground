import UIKit

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

let numberToCheck = 5
var shufflesCounter = 0

while true {
    let randomNumber = Int.random(in: 1...10)
    shufflesCounter += 1
    if randomNumber == numberToCheck {
        //        print("Number \(numberToCheck) will be after \(shufflesCounter) shuffles")
        break
    }
}

/*
 
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb +2 meters, during the night she slides down to -1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

var numberOfDays = 0
var distancePost = 0
var isDay = true

while distancePost != 10 {
    if isDay {
        distancePost += 2
        numberOfDays += 1
        isDay = false
    }else{
        distancePost -= 1
        isDay = true
    }
}

//print(numberOfDays)

//MARK: - LESSON 4 - Function()

func addingTwoNumber(){
    let a = 4
    let b = 2
    let c = a + b
    print("c:", c)
}

addingTwoNumber()
addingTwoNumber()
addingTwoNumber()

func addingNumbers() -> Int {
    let a = 4
    let b = 2
    return a + b
}

addingNumbers()

func addTwoNumbers(numberOne a: Int, numberTwo b: Int) -> Int{
    return a + b
}

addTwoNumbers(numberOne: 5, numberTwo: 6)

func multiplyNumb(numberOne: Int, numberTwo: Int) -> Int {
    return numberOne * numberTwo
}

multiplyNumb(numberOne: 4, numberTwo: 3)


func addTwoNumbersWithParams(_ numberOne: Int,_ numberTwo: Int) -> Int{
    return numberOne + numberTwo
}

addTwoNumbersWithParams(8, 3)

func multiplyNumb(_ numberOne: Int, multiply numberTwo: Int) -> Int {
    return numberOne * numberTwo
}

multiplyNumb(5, multiply: 5)
multiplyNumb(numberOne: 2, numberTwo: 5)
multiplyNumb(12, multiply: 2)


func average(_ numbers: Double...) -> Double {
    var total = 0.0
    type(of: numbers)
    
    for i in numbers {
        total += i
    }
    return total / Double(numbers.count)
}

average(5, 10, 5, 10)


let someNumber = 5
let arrayofNumbers = [5, 9, 2, 3, 4]

func filterLessThanValue(value: Int, numbers: [Int]) -> [Int]{
    var filteredNumbers: [Int] = []
    for number in numbers {
        if number <= value {
            filteredNumbers.append(number)
        }
    }
    return filteredNumbers
}

filterLessThanValue(value: someNumber, numbers: arrayofNumbers)


func calculateDateValue(fromBirth day: Int, month: Int, year: Int) {
    let currentDate = Date()
    
    var dateComponents = DateComponents()
    
    type(of: dateComponents)
    dateComponents.day = day
    dateComponents.month = month
    dateComponents.year = year
    
    let userCalendar = Calendar.current
    
    if let calculateDate = userCalendar.date(from: dateComponents) {
        
        let dayPassed = userCalendar.dateComponents([.day], from: calculateDate, to: currentDate).day
        let monthPassed = userCalendar.dateComponents([.month], from: calculateDate, to: currentDate).month
        let yearPassed = userCalendar.dateComponents([.year], from: calculateDate, to: currentDate).year
        
        print("\(yearPassed ?? 0) years, \(monthPassed ?? 0) months, \(dayPassed ?? 0) days have passed since")
    }
}

calculateDateValue(fromBirth: 1, month: 5, year: 196)
