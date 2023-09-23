// MARK: - Ternary conditionals
var hasMoney: Bool = false
var message: String = ""

// That is a conditional:
func verifyHowWeGo() {
    if hasMoney {
    message = "We will go by car."
    } else {
        message = "We will go by buss."
    }
    print(message)
}

// That is a ternary conditional:
func verifyWhatWeGoEatOnTheCinema() {
    message = hasMoney ? "We will eat Popcorn on the cinema" : "We will't eat on the cinema"
    print(message)
}

verifyHowWeGo()
verifyWhatWeGoEatOnTheCinema()