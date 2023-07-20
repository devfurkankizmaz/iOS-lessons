// Hands-On #1

// Define the main function
func main() {
    // Create an array of tuples named "tupleInfoArr" containing information about individuals (name, weight, height).
    let tupleInfoArr = [(name: "Furkan", weight: 84.0, height: 1.79),
                        (name: "Zeynep", weight: 57.0, height: 1.69),
                        (name: "Ayşe", weight: 70.0, height: 1.85),
                        (name: "Ece", weight: 63.0, height: 1.71),
                        (name: "Merve", weight: 45.0, height: 1.55),
                        (name: "Esra", weight: 100.0, height: 1.60)]
    
    // Call the "calculateBMI" function and pass the "tupleInfoArr" as an argument.
    calcuteBMI(resultArr: tupleInfoArr)
}

// Define a function called "calculateBMI" that takes an array of tuples containing name, weight, and height as parameters.
func calcuteBMI(resultArr: [(name: String, weight: Double, height: Double)]) {
    // Create an empty array of tuples to store the calculated BMI values along with the names.
    var newArr: [(name: String, bmi: Double)] = []
    
    // Calculate the BMI for each person in the "resultArr" and store the result along with the name in the "newArr" array.
    resultArr.forEach({ result in
        let bmi = result.weight / (result.height * result.height)
        let r = (result.name, bmi)
        newArr.append(r)
    })
    
    // Call the "showBMIStatus" function and pass the "newArr" as an argument to display BMI status for each individual.
    showBMIStatus(bmiArr: newArr)
    
    // Call the "showFilteredBMI" function and pass the "newArr" as an argument to filter individuals based on BMI value.
    showFilteredBMI(bmiArr: newArr)
}

// Define a function called "showFilteredBMI" that takes an array of tuples containing name and BMI as parameters.
func showFilteredBMI(bmiArr: [(name: String, bmi: Double)]) {
    // Define the BMI value to be used as a filter.
    let filterInput = 22.0
    
    // Use the "filter" function to filter the "bmiArr" and create a new array "filteredBMIArr" containing individuals
    // with BMI values less than the defined filter value.
    let filteredBMIArr = bmiArr.filter({ bmi in
        bmi.bmi < filterInput
    })
    
    // Print the "filteredBMIArr" array containing individuals with BMI values less than 22.0.
    print(filteredBMIArr)
}

// Define a function called "showBMIStatus" that takes an array of tuples containing name and BMI as parameters.
func showBMIStatus(bmiArr: [(name: String, bmi: Double)]) {
    // Iterate through each tuple in the "bmiArr" and print the BMI status based on predefined ranges.
    bmiArr.forEach({ bmi in
        switch bmi.bmi {
        case 0..<18.5:
            print("\(bmi.name) : Zayıf") // Underweight
        case 18.5..<25:
            print("\(bmi.name) : Normal")
        case 25..<30:
            print("\(bmi.name) : Fazla Kilolu") // Overweight
        case 30...:
            print("\(bmi.name) : Obez") // Obese
        default:
            print("\(bmi.name) : Invalid BMI value")
            break
        }
    })
}


// Call the "main" function to begin the program's execution.

// ---Start--- //
main()
// ----------- //




