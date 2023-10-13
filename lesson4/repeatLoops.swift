// The Swift Programming Language
// https://docs.swift.org/swift-book

// MARK: - For
var names = ["Michael", "Ryan", "Dwight", "Oscar", "Darryl", "Creed", "Kevin", "Kelly", "Andy"]

print("Same of the names of The Office... /n")

for name in names {
    print(name)
}

// MARK: - While
print("\nRemoving some names of the list...")

while names.count > 6 {
    names.removeLast()
}
print("Remaining names: ", names)

// MARK: - Repeat
print("\nSample repeat loop")

var count = 5
repeat {
    count -= 1
    print("Olá! Restam ", count)
} while (count > 0)

// MARK: - For with break
print("\nSample for loop with break on the find 'Dwight'")

for name in names {
    print(name)
    if name == "Dwight" {
        break
    }
}

// MARK: - While with break
print("\nSample while with break on the find 'Oscar'")

let lenghtList = names.count
var whileWithBreakCount = 0
while (whileWithBreakCount < lenghtList) {
    print("Name ", whileWithBreakCount, "is: ", names[whileWithBreakCount])
    if names[whileWithBreakCount] == "Oscar" {
        break
    }
    whileWithBreakCount += 1
}

// MARK: - Repeat with break
print("\nSample repeat with break when find 'Dwight'")

var repeatWhileWithBreakCount = 0
repeat {
    let name = names[repeatWhileWithBreakCount]
    print(name)
    if name == "Dwight" {
        break
    }
    repeatWhileWithBreakCount += 1
} while (repeatWhileWithBreakCount < lenghtList)

// MARK: - For with continue
print("\nSample for with continue, don't show names when the last letter are equal 'l'")

for name in names {
    if name.last == "l" {
        continue
    }
    print(name)
}

// MARK: - While with continue
print("\nSample for while loop, print just cousin numbers")

let maxNumber = 20
var countNumbersWhileWithContinue = 0

while(countNumbersWhileWithContinue <= maxNumber) {
    var dividers = 0
    countNumbersWhileWithContinue += 1

    guard countNumbersWhileWithContinue != 1 else {
        continue
    }

    for divider in 1...maxNumber {
        if countNumbersWhileWithContinue % divider == 0 {
            dividers += 1
        }
    }

    if dividers == 2 {
        print(countNumbersWhileWithContinue, " is cousin")
    }
}

// MARK: - Repeat with continue
print("\n Repeat with continue")

var countRepeatWithContinue = 0
let max = 10
repeat {
    if countRepeatWithContinue == 5 {
        countRepeatWithContinue += 1
        continue
    }
    print("Current number: ", countRepeatWithContinue)
    countRepeatWithContinue += 1
} while (countRepeatWithContinue < max)

// MARK: - For nested
// print("\n ")

// MARK: - For nested with internal break
// print("\n ")

// MARK: - For nested with external break
// print("\n ")

// MARK: - For nested with external break from internal trigger using for identifier
// print("\n ")
