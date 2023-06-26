
import Foundation

var greeting = "Hello, playground"
/**
 Loops
 */

/**
 `for` loop
 **/
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

// range of numbers including last number (multiplication table example)
for i in 1...20 {
    print("The \(i) times table:")
    
    // range excluding last number
    for j in 1..<20 {
        print("  \(j) x \(i) is \(j * i)")
    }

    print()
}

// exclude the loop variable if you're not using it
var lyric = "Haters gonna"

for _ in 1...6 {
    lyric += " hate"
}

print("\(lyric). Just shake it off")

/**
 `while` loop
 **/
var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off! 🚀")

// random numbers built-in
let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!
print("Critical hit!")


// skip loop iterations `continue`
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}

// break
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)


// fizz buzz
for number in 1...100 {
    if number.isMultiple(of: 3) && number.isMultiple(of: 3) {
        print("FizzBuzz")
    } else if number.isMultiple(of: 3) {
        print("Fizz")
    } else if number.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(number)
    }
}
