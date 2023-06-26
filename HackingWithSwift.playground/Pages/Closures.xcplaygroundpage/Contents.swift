import Foundation

var greeting = "Hello, closures"

/**
    Use of`closures` in Swift
 */

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

var luckyNumbersInText = luckyNumbers.filter{ !$0.isMultiple(of: 2) }.sorted{ $0 < $1 }.map{ "\($0) is a lucky number" }

for text in luckyNumbersInText {
    print(text)
}
