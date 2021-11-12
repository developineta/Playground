import UIKit

//MARK: - OOP
//FB post
//let postTitle = "OOP"
//let postText = "Text of the article"
//let postAuthor = "ios Bootcamp"
//
//let postTitle2 = "Classes"
//let postText2 = "Text of the article"
//let postAuthor2 = postAuthor

class Post {
    var title = "demo"
    var text = ""
    var author = "AM"
}


let firstPots = Post()

firstPots.title = "this is my first post"
firstPots.text = "text"
firstPots.author = "AA"

let secondPost = firstPots
secondPost.text = "2"
secondPost.title = "?????"


print("author \(firstPots.author) has published new post - \(firstPots.title) - with \(firstPots.text)")
print("author \(firstPots.author) has published new post - \(secondPost.title) - with \(secondPost.text)")

firstPots === secondPost


class Comment {
    var like = ""
    var author = ""
    
    var numberOfLikes = 0
    
    func addLikes(){
        numberOfLikes += 1
    }
}


let firstComment = Comment()

firstComment.like = "like"
firstComment.addLikes()
firstComment.addLikes()
firstComment.addLikes()

print("number or like of our \(firstComment.like) reached \(firstComment.numberOfLikes)")


class Human {
    var name: String = ""
    var age: Int = 0
    
    init(){}
    
    init(nameA: String, ageA: Int){
        self.name = nameA
        self.age = ageA
    }
}

let person = Human()
let personA = Human(nameA: "Bob", ageA: 33)


class Parent {
    var name = ""
    var age = 0
    
    init(nameA: String, ageA: Int){
        self.name = nameA
        self.age = ageA
    }
    
    func walk(){
        print("can walk")
    }
    
    func talk(){
        print("can talk")
    }
    
    func eat(){
        print("can eat")
    }
}

let dad = Parent(nameA: "Sam", ageA: 33)
dad.eat()
dad.walk()
dad.talk()


class Child: Parent{
    func feeding(){
        if age <= 1 {
            print("child need a help")
        }else{
            print("can eat by himself")
        }
    }
}

let littleBoy = Child(nameA: "Tom", ageA: 1)
littleBoy.name
littleBoy.walk()
littleBoy.talk()
littleBoy.feeding()


class SchoolBoy: Child {
    func learning(){
        if age >= 7 && age <= 18 {
            print("school time")
        }else{
            print("too early for school")
        }
    }
}

let schoolBoyQ = SchoolBoy(nameA: "Q", ageA: 44)
schoolBoyQ.talk()


class Figure {
    func drawing(){}
}


class Circle: Figure {
    override func drawing() {
        print("Draw the circle")
    }
}


class Triangle: Figure {
    override func drawing() {
        print("Draw the triangle")
    }
}

class Rectangle: Figure {
    override func drawing() {
        print("Draw the Rectangle")
    }
}

let circle = Circle()
let rectangle = Rectangle()
let triangle = Triangle()

func drawFigure(_ figure: Figure){
    figure.drawing()
}

drawFigure(rectangle)
drawFigure(triangle)

//MARK: - enum
var someDay = "friday"

func setupAlarm(){
    if someDay == "Friday" {
        print("set up alarm at 8:00 AM")
    }else{
        print("no alarm")
    }
}

setupAlarm()


enum Weekday {
    case monday
    case tuesday, wednesday, thursday
    case friday, saturday, sunday
}

var weekday = Weekday.thursday
var week: Weekday = .friday

func setupBedTime(){
    if weekday == .wednesday || weekday == .thursday {
        print("set up bed time at 23:00 PM")
    }else{
        print("no alarm")
    }
}
setupBedTime()


enum CalculationType: String {
    case addition = "+"
    case substraction = "-"
    case multiplication = "*"
    case division = "/"
}

var cacl = CalculationType.multiplication
print(cacl.rawValue)


enum Planet: Int{
    case earth = 5, venus, mars, neptun, jupiter, uranus, saturn, mercury
}

var somePlanet = Planet.mars
print("earth is the \(somePlanet.rawValue) planet to the moon")

let planetOne = Planet(rawValue: 8)
print("\(planetOne)")


enum Weeknd{
    case saturday(String)
    case sunday(String, Int, String)
}

var wnd = Weeknd.sunday("set up bed time at", 11, "PM")
print(wnd)


//MARK: - Struct
struct ChessBoard {
    var player: String
    var x: Int
    var y: Int
    
    func getPostionOnBoard(){
        print("The position of player \(player): x \(x), y \(y)")
    }
}

var playerOne = ChessBoard(player: "One", x: 12, y: 3)
var playerTwo = ChessBoard(player: "Two", x: 4, y: 4)

playerOne.getPostionOnBoard()
playerTwo.getPostionOnBoard()


class MacBook {
    var name: String
    var year: Int
    var capacity: Int
    
    init(name: String, year: Int, capacity: Int){
        self.year = year
        self.name = name
        self.capacity = capacity
    }
    
    func getSpecs(){
        print("\(name), \(year), \(capacity)!")
    }
}

let macBookPro = MacBook(name: "MacBook Pro", year: 2018, capacity: 256)
macBookPro.getSpecs()

let macBookAir = macBookPro
macBookAir.name = "MacBook Air"

macBookAir.getSpecs()
macBookPro.getSpecs()


struct iPhone {
    var name: String?
    var year: Int?
    var capacity: Int?
    
    func getSpecs(){
        print("\(name ?? ""), \(year ?? 0), \(capacity ?? 0)!")
    }
}

let iPhoneXR = iPhone(name: "iPhone XR", year: 2017, capacity: 64)

var iPhone11 = iPhoneXR
iPhone11.name = "iPhone 11"

iPhoneXR.getSpecs()
iPhone11.getSpecs()
