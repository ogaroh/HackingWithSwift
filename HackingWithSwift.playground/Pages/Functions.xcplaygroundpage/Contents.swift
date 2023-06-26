//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func fizzBuzz(firstNumber: Int, secondNumber: Int, upperLimit: Int) {
    for number in 1...upperLimit {
        if number.isMultiple(of: firstNumber) && number.isMultiple(of: secondNumber) {
            print("FizzBuzz")
        } else if number.isMultiple(of: firstNumber) {
            print("Fizz")
        } else if number.isMultiple(of: secondNumber) {
            print("Buzz")
        } else {
            print(number)
        }
    }
}


fizzBuzz(firstNumber: 3, secondNumber: 5, upperLimit: 100)

func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

// return types from functions
func pythagoras(a: Double, b: Double) -> Double {
    sqrt((a * a) + (b * b))
}

print(pythagoras(a: 3.0, b: 4.0))

// return multiple values from functions
// use `tuples`
func getUser() -> [(firstName: String, lastName: String)] {
    [
        (firstName: "Taylor", lastName: "Swift"),
        (firstName: "Erick", lastName: "Ogaro")
    ]
}

let users = getUser()

for user in users {
    // shorthand
    // let (firstName, lastName) = user
    print("Full Name: \(user.firstName) \(user.lastName)")
}

// error handling in functions
enum PasswordError: Error {
    case short, obvious
}

enum RootingError: Error {
    case outOfBounds, notFound
}

// extend the throws functionality
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}


// square root
func findSquareRoot(for number : Int) -> Int {
    guard number > 0 && number <= 10_000 else { return 0 }
     for i in 0...(number / 2) {
       if i * i == number {
         return i
       }
     }
    return 0
}

print(findSquareRoot(for: 64))
