import UIKit

var messageString = "I am a Developer!"
//print("Hello There!", messageString) adds a space
//print("Hello There!" + messageString) concatenates Strings
//print("Hello There!" \(messageString)) String interpolation

var person = "Shail"

//Conditionals Starts Here..

if person == "Limor" {
    print("Hello, Lady Ada!")
} else if person == "Grace" {
    print("Hello, Admiral Hopper")
} else {
    print("Hey There! \(person)")
}

// Switch case statements
let user = "John"

switch user {
case "John":
    print("Hey John! How its going?")
case "Drew":
    print("Hello Mr. Drew")
case "Linda":
    print("Hi, Mrs. Linda")
default:
    print("Hey \(user)")
}

// Ternary operator
let welcomeMessage = user.lowercased() == "john" ? "Hey Buddy!" : "Hello \(user)"

print(welcomeMessage)
// Constants are immutable and we can define by using let
let environment = "LOCAL"
let server = "production"

// Use uppercase or lowercase
print(environment.lowercased())
print(server.uppercased())

//Arrays
//Create empty arrays
//var grades: [Double] = []
var grades = [Double]()

var fruits = ["Apple", "banana", "orange", "watermelon", "kiwi"]
print(fruits)

// Generate random values
let randomNumbers = Int.random(in: 1...20)
print(randomNumbers)
let randomDecimals = Double.random(in: -1.0...1.0)
print(randomDecimals)
let randomBools = Bool.random()
print(randomBools)


// Loops starts here
let diceNumber = 6
//while loop
var newDiceNumber = Int.random(in: 1...6)
while diceNumber == newDiceNumber {
    newDiceNumber = Int.random(in: 1...6)
    print(newDiceNumber)
}

// for loop
for x in 0...10 {
    print("value of x is \(x)")
}
let products = ["Apple", "Mobile", "T-shirt", "Car", "Mango", "Computer"]

let productCount = products.count

for product in 0...productCount-1 {
    print("Product is \(products[product])")
}
// Half open range
print("\nHalf open Range")
for number in 0..<products.count {
    print(products[number])
}

//Iterate through an array
print("\nIterate through an array")
for product in products {
    print("\(product) is available")
}

print("\nGet grades average")
let newGrades = [72, 81, 89, 95, 92]

var totalGrades: Int = 0

for grade in newGrades {
    totalGrades += grade
}
print("Average of total grades is \(Double(totalGrades) / Double(newGrades.count))")

print("\nUse of Reversed to make a countdown of time from 10 to 0")
//for loop reversed
for countdown in (0...10).reversed() {
    print("Timer \(countdown)")
    if countdown == 0 {
        print("Wake up!!! ⏰")
    }
}

print("\nUse of Stride to count the Olympic years from 2000 through 2020")
for year in stride(from: 2000, through: 2029, by: 4) {
        print("Year - \(year)")
}
print("\nUse of Stride in years from 2025 to 1980")
for year in stride(from: 2025, through: 1980, by: -4) {
        print("Year - \(year)")
}


//Introduction to functions

print("\nRoll Dice - no params & no return values")
func rollDice() {
    print("Rolled a Dice \(Int.random(in: 1...6))")
}

rollDice()
rollDice()
rollDice()

//Roll an x-sided dice. function with 1 param
print("\nRoll Dice - with one params, no return")
func rollSidedDice(sides: Int) {
    print("Rolled a Dice \(Int.random(in: 1...sides)) on a \(sides)-sided dice")
}

rollSidedDice(sides: 4)
rollSidedDice(sides: 6)
rollSidedDice(sides: 10)

print("\nRoll Dice - with two params, no return")
func rollSidedDiceWithTwoParams(numberOfDices: Int, sides: Int) {
    guard numberOfDices > 0 else {
        print("Please enter number of dices to roll")
        return
    }
    var sumOfTotalRolls = 0;
    var diceValues: [Int] = []
    
    for _ in 1...numberOfDices {
        let randomValue = Int.random(in: 1...sides)
        diceValues.append(randomValue)
        sumOfTotalRolls += randomValue
    }
print("Rolling number of Dices \(numberOfDices), \(sides)-sided dice: \(diceValues) Total Roll: \(sumOfTotalRolls)")
}

rollSidedDiceWithTwoParams(numberOfDices: 0, sides: 10)

