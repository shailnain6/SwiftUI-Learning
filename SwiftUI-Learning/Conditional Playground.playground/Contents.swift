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
