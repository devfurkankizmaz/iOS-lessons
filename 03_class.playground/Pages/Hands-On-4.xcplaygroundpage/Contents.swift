// Hands-On #4

// Define the main function
func main() {
    var users:[(name:String, weight:Double, height:Double)?] = [
        ("Tarık",70.0,1.74),
        ("Mahmut",78.0,1.78),
        ("Kaan",85.0,1.85),
        ("Elif",53.0,1.64),
        ("Melih",74.0,1.85),
        ("Emirhan",70.0,1.83), nil, nil]
    
    let unwrappedUsers = users.compactMap { $0 }
    
    calcuteBMI(resultArr: unwrappedUsers)
}

enum BMI:String {
    case thin = "Zayıf", normal = "Normal", heavy = "Şişman", obese = "Obez"
}

func calcuteBMI(resultArr: [(name: String, weight: Double, height: Double)]) {
    
    var newArr: [(name: String, bmi: Double, status:BMI)] = []
    
    resultArr.forEach({ result in
            let bmi = result.weight / (result.height * result.height)
            let bmiStatus: BMI

            switch bmi {
            case 0..<18.5:
                bmiStatus = .thin
            case 18.5..<25:
                bmiStatus = .normal
            case 25..<30:
                bmiStatus = .heavy
            default:
                bmiStatus = .obese
            }

            let r = (result.name, bmi, bmiStatus)
            newArr.append(r)
        })
    
    showBMIStatus(bmiArr: newArr)
}

func showBMIStatus(bmiArr: [(name: String, bmi: Double, status: BMI)]) {
    bmiArr.forEach({ bmi in
        print("\(bmi.name) : \(bmi.status.rawValue)")
    })
}

// Call the "main" function to begin the program's execution.

// ---Start--- //
main()
// ----------- //

