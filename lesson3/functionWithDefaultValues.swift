// MARK: - Functions with default value
func addNewUser(name: String, email: String, age: Int, showResume: Bool = false) {
    var message: String = ""
    if showResume {
        message = "New user was added. \nName: \(name) \nE-mail: \(email) \nAge: \(age)."
    } else {
        message = "Done!"
    }
    print(message)
}

addNewUser(name: "Mauro", email:"mauro@gmail.com", age: 19)
addNewUser(name: "Daiana", email:"daiana@gmail.com", age: 21, showResume: true)