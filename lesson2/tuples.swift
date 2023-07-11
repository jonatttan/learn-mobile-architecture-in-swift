/* Tuple - That's a simple object with more datas */

// Simple tuple
var sundownTopModel = (
    "Sundown", 
    "Top Model", 
    299.00
)

print(sundownTopModel.0) // Get the first value from tuple
print(sundownTopModel.1)
print(sundownTopModel.2)

sundownTopModel.2 = 150.00 // Change value on the third position
print(sundownTopModel.0, sundownTopModel.1, "cost $", sundownTopModel.2)

// Named tuple
var caloi10 = (
    factory: "Caloi",
    model: "10"
)

print(caloi10.factory) // Get the first value from named tuple
print(caloi10.model) // Get the last value from named tuple

caloi10.factory = "New Caloi" // Change value on the factory attribute
print(caloi10)

// Do you can agregate tuples in the dictionary, arrays, sets, enums...
let monarkIpanema = (
    factory: "Monark", model: "Ipanema"
)

let bikeStoreArray = [caloi10, monarkIpanema]
print("The stock have that bikes: ")
bikeStoreArray.forEach {
    print("\($0.factory) \($0.model)")
}


/* Tuples too agregate other tuples, dictionaries and etc */

// Tuple in tuple
let sampleTupleInTuple = ("KRW", "TZ", 500, ("Azul e preto", "Cambio Shimano", "Freios a disco"))
print("We have a \(sampleTupleInTuple.0), cost $\(sampleTupleInTuple.2), on color \(sampleTupleInTuple.3.0)")

// Dictionary in tuple
let sampleDictInTuple = ("Soul", "SL329", 600, ["color": "Preto e laranja", "machine": "Shimano", "breaks": "v-break"])
print("We have a \(sampleDictInTuple.0) from $\(sampleDictInTuple.2), color \(sampleDictInTuple.3["color"] ?? "")")