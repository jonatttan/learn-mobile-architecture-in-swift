var motoSetList = Set<String>() // Instantiate a new empty Set

let cg150 = "Honda CG 150cc"
let cg125 = "Honda CG 125cc"
let cb300 = "Hoda CB 300cc"
let factor150 = "Yamaha Factor 150cc"
let factor125 = "Yamaha Factor 125cc"
let tenere250 = "Yamaha Ténéré 250cc"

print(motoSetList) // Print your content, but not in the order they were included, because it's a Set.

motoSetList.insert(cg150)  // Include a new value

motoSetList.formUnion([cg125, cb300, factor150, factor125, tenere250]) // Include multiple values


ptint(motoSetList.contains(cg150)) // Verify contains Honda CG 150cc on the Set

motoSetList.removeFisrt() // Remove first value

motoSetList.removeAll() // Remove all values

motoSetList.remove(cb300) // Remove a value

/* Unions operations Set */
let otherStoreCatalog = Set([
    "Hoda CB 300cc", 
    "Yamaha Ténéré 250cc", 
    "Yamaha Neo 125cc", 
    "Honda PCX 150cc", 
    "Yamaha XT 600cc", 
    "Honda Transalph 700cc", 
    "Honda Varadero 1000cc"
    ])

let unionMotoSetList = motoSetList.union(otherStoreCatalog) // Joining two Sets

let commons = motoSetList.intersection(otherStoreCatalog) // Select just values in common

let subtract = motoSetList.subtracting(otherStoreCatalog) // Select all motoSetList have but otherStoreCatalog don't have

let symmetricDifference = motoSetList.symmetricDifference(otherStoreCatalog) // Select all different values on the motoSetList and otherStoreCatalog

let justContainSameOrPartialValues = otherStoreCatalog.isSubset(of: motoSetList) // Check that all values in otherStoreCatalog are just the same or some of the values contained in motoSetList

let twoSetsAreEquals = motoSetList == otherStoreCatalog // Verify is two Sets are equals


/* Others */
let newSetInt: Set<Int> = [1, 2, 3] // Wen we want create with specify the type is Int

let newSetString: Set<String> = ["olá", "mundo"] // Wen we want create with specify the type is String

