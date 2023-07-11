/* Dictionary */

var touristPlaces = [String:String]() // Create empty String dictionary

// Set values
touristPlaces = ["Liberty Statue":"New York", "The Colosseum":"Rome"]

// Adding values
touristPlaces["Vatican Museums"] = "Rome"
touristPlaces["Louvre Museum"] = "Paris"
touristPlaces["Eiffel Tower"] = "Paris"
touristPlaces["Basilica de la Sagrada Familia"] = "Barcelona"

// Show all values on dictionary
print(touristPlaces)

// Change value on key "Vatican Museu"
touristPlaces["Vatican Museums"] = "Rome, Italy"

// Remove value
touristPlaces.removeValue(forKey: "Vatican Museums")

// Show all keys on the dictionary
print(touristPlaces.keys)

// Show all values on the dictionary
print(touristPlaces.values)

// Count how many values has in the dictionary
print(touristPlaces.count)

// Verify if dictionary is empty
print(touristPlaces.isEmpty)

// Create a mixed data type dictionary
let dictStringInt: [String:Int] = ["cod": 1, "age": 94]
print(dictStringInt)

let dictIntAny: [Int:Any] = [1: 1994, 3: "age", 5: 9.54]
print(dictIntAny)