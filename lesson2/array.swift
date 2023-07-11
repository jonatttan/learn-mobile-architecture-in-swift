/* Working with arrays */

var gmCarsArray = [String]() // Instantiate a empty string array

let gmMonza = "Chevrolet Monza"
let gmKadett = "Chevrollet Kadett"
let gmIpanema = "Chevrollet Ipanema"
let gmCorsa = "Chevrollet Corsa"

gmCarsArray = [gmMonza, gmKadett, gmIpanema, gmCorsa] // Populating array

print(gmCarsArray) // Show all values in array

print(gmCarsArray[0]) // Show value on first position in array
print(gmCarsArray.first ?? "")

print(gmCarsArray.last ?? "") // Show value on last position in array

print(gmCarsArray[2]) // Show value on third position in array (start in zero)

gmCarsArray.append("Chevrolet Chevette") // Add new value in array

gmCarsArray.removeLast() // Remove last value from array

gmCarsArray.removeFirst() // Remove first value from array

gmCarsArray.remove(at: 1) // Remove second value from array

let gmNewGeneration = ["Chevrolet Onix", "Chevrolet Cruze"]
gmCarsArray.append(contentsOf: gmNewGeneration) // Join two arrays
print(gmCarsArray)

gmCarsArray.insert("Chevrolet Blazer", at: 2) // Adding new value on the third position on the array

gmCarsArray[1] = "war tank" // Modifying value in second position on the array

print("Contain \(gmCarsArray.count) values on the array") // Count how many values has in the array

print(gmCarsArray.isEmpty) // Verify if array contain values

let mixArray: [Any] = [1980, "Chevrolet Chevette", 1990, gmKadett] // Create a mixed data type array
print(mixArray)