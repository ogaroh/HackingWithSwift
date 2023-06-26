
import Foundation

/**
 Type annotations
*/

let surname: String = "Lasso"
var score: Int = 0
let pi: Double = 3.141
var isAuthenticated: Bool = true
var customNames: [String] = ["Erick", "Obara", "Ogaro"]
var user: [String: String] = ["id": "@ogaroh", "name" : "Erick"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])


var teams: [String] = [String]()
var set: Set<String> = Set()

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
style = .dark
style = .system

/**
 Coding challenge
 */

let array  = ["Erick", "Ogaro", "Obara", "Ogaro"]

print(array.count)
// unique items - set
print(Set(array).count)
