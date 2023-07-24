import Foundation
// Playground

struct User {
    var name: String?
    var surname: String?
    var birthDay: Int?
    var place: String?

    init(place: String) {
        self.place = place
    }

    init(name: String, surname: String, birthDay: Int) {
        self.name = name
        self.birthDay = birthDay
        self.surname = surname
        self.place = "Istanbul"
    }

    func calcAge(_ currentYear: Int) -> Int {
        guard let unwrappedBirthDay = birthDay else {
            return 0
        }
        let age = currentYear - unwrappedBirthDay
        return age
    }

    func calcAge() -> Int {
        let currentYear = 2023
        guard let unwrappedBirthDay = birthDay else {
            return 0
        }
        let age = currentYear - unwrappedBirthDay
        return age
    }
}

// Define a function called "main"
func main() {
    // This code block will start when the Playground is executed
    var userArr = [
        User(name: "Ahmet", surname: "Demir", birthDay: 2001),
        User(name: "Ali", surname: "Çelik", birthDay: 1999),
        User(name: "Veli", surname: "Uranyum", birthDay: 1990),
        User(name: "Ayşe", surname: "Oksijen", birthDay: 1987),
    ]
    Print(userArr)
}

// Call the "main" function to begin the program's execution.
// ---Start--- //
main()
// ----------- //

// Custom Print Function
func Print(_ input: Any) {
    if let inputArr = input as? [Any] {
        print("<-----Array Output----->")
        var count = 0
        inputArr.forEach { i in
            print("\(count): \"\(i)\"")
            count = count + 1
        }
        print("<---------------------->")

    } else { print("Output: \"\(input)\"") }
    print("")
}
