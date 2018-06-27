// Variable declaration without data type //    Mutable.
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

// Multilint Strings and printing characters.
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
// print("Weather in mumbai is \(weather!)")

// Conditional unwrapping

if let someValue = weather {
    print("Server returned us weather as \(someValue)")
}
else {
    print("Didn't received value from server")
}




