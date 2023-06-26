
import Foundation

let degreesInCelsius = 65.3

let degreesInFahrenheit = ((degreesInCelsius * 9) / 5) + 32

print("Celsius: \(degreesInCelsius)°C")
print("Fahrenheit: \(round(degreesInFahrenheit * 100) / 100)°F")
