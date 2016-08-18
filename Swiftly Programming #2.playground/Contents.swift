//: Playground - noun: a place where people can play

import UIKit


// Using "if" and "switch" to make conditionals and using "for-in", "for", "while" and "repeat-while" to make loops 

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore+=3
    }else {
        teamScore+=1
    }
}
print(teamScore)

//using "if" and "let" together to work with values that are missing (by representing them as optionals). To do this write a question mark (?)
// after the type of value to mark the value as optional

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "Karl Richardson"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}else {
    greeting = "Hello stranger"

}


// using ?? operator to provide a default value 

let nickName: String? = nil
let fullName: String? = "Karl Richardson"
let informalGreeting = "Hi \(nickName ?? fullName)"

// Using swtiches 

let vegetable = "watercress"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in a soup.")
}

//using a "for-in" to iterate over items in a dictionary by providing a pair of names to use for each key-value pair

let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square": [1,4,9,16,25],
]

var largest = 0
var largestKind = ""

for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
            
        }
    }
}
print("The largest type of number was a \(largestKind) number with the value of \(largest)")


//using a while condition to repeat a block of code until a condition changes 

var n = 2
while n < 100 {
    n = n * 2
}
print(n)


var m = 2
repeat {
    m = m * 2
} while m < 100
print(m)


//keeping an index in a loop using "..<". 
//Use "..<" to make a range that omits its upper value 
//Use "..." to make a range that includes both values
var total = 0
for i in 0..<4 {
    total+=i
}
print(total)





