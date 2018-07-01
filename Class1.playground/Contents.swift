//: 1. Variable [declaration][1] without data type
var location = "Thane"
var company = "Microsoft"

// Variable declaration with data type
var age:Int = 30
var salary:Double = 10_00_000.50
var isEngineer:Bool = true

// Defining Constants // Immutable
let name = "Vipul"
let surname = "Shah"
let fullName = "\(name) \(surname) \(isEngineer)"

location = "Mulund"

// Type Saftey
// var isFriend:Bool = "sample"

// Print int ranges
let int8Min = Int8.min
let int8Max = Int8.max
let int16Min = Int16.min
let int16Max = Int16.max
let int32Min = Int32.min
let int32Max = Int32.max

print("\(int8Min) \(int8Max)")
print("\(int16Min) \(int16Max)")
print("\(int32Min) \(int32Max)")

// Declaring Binary
// 3 => 011
let binaryThree = 0b011

// Typecasting
var a:Int8 = 10
var b:Double = 15.50
var c = Double(a) + b
print("Addition is \(c)")

// Multiline Strings and printing characters.
var aboutMe = """
my name is vipul.

I like Swift Programming.

I like to play cricket
"""

print(aboutMe)

for char in aboutMe {
    print("Character is \(char)")
}

// Optional Variables

var weather:Float?

// server gives us weather value
weather = 27.01

// Forceful unwrapping
print("Weather in mumbai is \(weather!)")

// Conditional unwrapping
if let someValue = weather {
    print("Server returned us weather as \(someValue)")
}
else {
    print("Didn't received value from server")
}

var username:String?
print(username ?? "Please enter username")

// Collections in swift

// Array
var numbers:[[Int8]] = [[1],[2,3],[4]]

numbers.count
numbers.append([10])
numbers.remove(at: 0)
print(numbers)

var students = [String]()
students.append("Vipul")
students.append("Anup")

var laptops = ["Apple","HP","Dell"]

for (index,model) in laptops.enumerated() {
    print("\(index) -> \(model)")
}

// Dictionary

var friends:[Int:String] = [1:"Vipul",3:"Anup"]
print(friends[0])
friends[2] = "Sanket"
friends.removeValue(forKey: 1)
print(friends)

for (rollNo,name) in friends {
    print("\(rollNo) -> \(name)")
}

// Tuple
let something = ("Pen",10,true,35.56)
print(something.0)
print(something.1)
print(something.2)
print(something.3)

let (thing,humanAge, isHuman,marks) = something
print(thing)
print(humanAge)
print(isHuman)
print(marks)

// Loops

// Range Operator
for number in 1..<5 {
    print("Element is \(number)")
}

// Switch Case

var grade = 93
switch grade {
case 90...100:
    print("Grade is an A")
case 80...89:
    print("Grade is a B")
case 70...79:
    print("Grade is an C")
case 60...69:
    print("Grade is a D")
case 0...59:
    print("Grade is a F")
default:
    print("Unknown Grade")
}

// Functions
func getAge() -> Int {
    return 10
}
let someAge = getAge()

// Functions with argument
func addNumbers(num1:Int,num2:Int) -> Int {
    return num1+num2
}

print("Anser is \(addNumbers(num1: 10, num2: 20))")

// Functions with default argument values
func addNumbers(num1:Int = 0,num2:Int = 0,num3:Int = 0) {
    print("Addition is \(num1+num2+num3)")
}

addNumbers()
addNumbers(num1: 10, num2: 20, num3: 30)
addNumbers( num2: 34, num3: 45)
addNumbers( num3: 45)

// Returning multiple values using tuples
func getPersonInfo() -> (name:String,age:Int,percent:Float) {
    return ("Ankit",23,99.45)
}

let personInfo = getPersonInfo()
personInfo.0
personInfo.1
personInfo.2

personInfo.name
personInfo.age
personInfo.percent

let (pName,pAge,pPercent) = getPersonInfo()
pName
pAge
pPercent

// Returning optional value
func getLatestNews() -> String? {
    return "Some News"
}

let abc:String? = nil

let news = getLatestNews()
print(news == nil ? "abc":"No news found!")

// Varargs

func sumValues(numbers:Int...) -> Int {
    var total = 0
    
    for num in numbers {
        total = total + num
    }
    
    return total
}

print(sumValues(numbers: 10))
print(sumValues(numbers: 10,20))
print(sumValues(numbers: 10,20,30))

// Structures // Copy by value

struct Person {
    var name:String
    var age:Int
    
    // Computed Properties
    var salary:Int {
        get {
            if age >= 18 {
                return 1000
            }
            else {
                return 500
            }
        }
        
        set {
            if newValue == 1000 {
                self.age = 34
            }
            else {
                self.age = 10
            }
        }
    }
}

var person1 = Person(name: "Vipul", age: 10)
var person2 = person1

person2.name  = "Ankit"

print(person1.name,person2.name)
print(person2.salary)
person2.salary = 1000
print(person2.age)

class Employee {
    var name:String
    var salary:Double
    
    init(name:String,salary:Double) {
        self.name = name
        self.salary = salary
    }
    
    final func printInfo() {
        print(name,salary)
    }
}

class SoftwareEngineer:Employee {
    var numOfBugsResolved:Int
    
    init(name:String,salary:Double,numOfBugsResolved:Int) {
        self.numOfBugsResolved = numOfBugsResolved
        super.init(name: name, salary: salary)
    }
}

class Doctor:Employee {
    var numOfSurgeriesPerformed:Int
    
    init(name:String,salary:Double,numOfSurgeriesPerformed:Int) {
        self.numOfSurgeriesPerformed = numOfSurgeriesPerformed
        super.init(name: name, salary: salary)
    }
}

var e1 = Employee(name: "A", salary: 1000)

// Extensions

extension String {
    var isPalindrome:Bool {
        get {
            return self.count > 3
        }
    }
}

extension Int {
   mutating func increment() {
        self = self + 1
    }
}

var someName = "Vipul"
someName.count
print(someName.isPalindrome)
var awe = 10
awe.increment()
print(awe)


