
import Foundation

/**
 Arrays
**/
var beatles = ["John", "Ringo", "Dave", "Adrian"]
print(beatles[0])
beatles.append("Erick")
beatles.sort()

print(beatles)

let reversedBeatles = beatles.reversed()

print(reversedBeatles)

beatles.removeFirst()

print(beatles)

/**
 Dictionaries
**/
var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Erick"] = "PHP"

archEnemies["Batman"] = "Penguin"

print(archEnemies)
print(archEnemies.count)
archEnemies.removeAll()

/**
 Sets
**/

// method 1 for creating a set
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)

// method 2 for creating a set
var _people = Set<String>()
_people.insert("Denzel Washington")
_people.insert("Tom Cruise")
_people.insert("Nicolas Cage")
_people.insert("Samuel L Jackson")

_people.contains("Tom Cross")
_people.count
_people.sorted()

/**
 Enums
**/

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

day = .wednesday // you can skip the enum name if the type is already defined


