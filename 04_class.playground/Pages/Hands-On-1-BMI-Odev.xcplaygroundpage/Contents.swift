// Hands-On #4

let users: [(name: String, weight: Double, height: Double)?] = [
    ("Tarık", 70.0, 1.74),
    ("Mahmut", 78.0, 1.78),
    ("Kaan", 85.0, 1.85),
    ("Elif", 53.0, 1.64),
    ("Melih", 74.0, 1.85),
    ("Emirhan", 70.0, 1.83), nil, nil,
]

// Define the main function
func main() {
    printBMIStatus(calcBMI(usersArr: users))
}

// Call the "main" function to begin the program's execution.

// ---Start--- //
main()
// ----------- //

enum BMIStatus: String {
    case underweight = "Zayıf" // ...18.5
    case normal = "Normal" // 18.5...25
    case overweight = "Şişman" // 25...30
    case obesily = "Obez" // 30...
}

func calcBMI(usersArr: [(name: String, weight: Double, height: Double)?]) -> [(name: String, bmi: Double, status: BMIStatus)] {
    var returnedArr: [(name: String, bmi: Double, status: BMIStatus)] = []
    let unwrappedUsers = usersArr.compactMap { $0 }

    unwrappedUsers.forEach { user in
        let bmi = user.weight / (user.height * user.height)
        let bmiStatus: BMIStatus

        switch bmi {
        case ...18.5:
            bmiStatus = .underweight
        case 18.5..<25:
            bmiStatus = .normal
        case 25..<30:
            bmiStatus = .overweight
        case 30...:
            bmiStatus = .obesily
        default:
            return
        }

        let u = (user.name, bmi, bmiStatus)
        returnedArr.append(u)
    }

    return returnedArr
}

func printBMIStatus(_ bmiArr: [(name: String, bmi: Double, status: BMIStatus)]) {
    bmiArr.forEach { user in
        print("\(user.name) - (BMI:\(user.bmi)): \(user.status.rawValue)")
    }
}
