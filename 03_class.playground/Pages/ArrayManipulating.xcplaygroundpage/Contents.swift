// Array Manipulating

// Define the main function
func main() {
    // Create an array of strings named "animals" containing various animal names.
    let animals = ["Horse", "Cat", "Dog", "Snake", "Elephant", "Rabbit", "Python"]
    
    // Create an array of integers named "numbers".
    let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    // Create an array of strings named "stringNumbers".
    let stringNumbers = ["one", "2", "3", "4", "five"]
    
    // Uncomment any of the following function calls to see the results:
    
    //printFilteredAnimals(animals)
    //printFilteredNumbers(numbers)
    //printMapArray(stringNumbers)
    sampleEnumerate(animals)
    sortArray(animals)
}

// Define a function called "sortArray" that takes an array of strings and sorts it in descending order.
func sortArray(_ animalsArr: [String]) {
    var animals = animalsArr
    animals.sort(by: { $0 > $1 })
    print(animals)
}

// Define a function called "sampleEnumerate" that takes an array of strings and prints each element along with its index.
func sampleEnumerate(_ animalsArr: [String]) {
    animalsArr.enumerated().forEach({ index, animal in
        print("Animal Index: \(index), Value: \(animal)")
    })
}

// Define a function called "printMapArray" that takes an array of strings, converts each element to an integer (if possible),
// and prints the result of both map and compactMap functions.
func printMapArray(_ stringNumArr: [String]) {
    let numberMap = stringNumArr.map({ number in
        Int(number)
    })
    
    print("Result of map: \(numberMap)")
    
    let numberCompact = stringNumArr.compactMap({ number in
        Int(number)
    })
    
    print("Result of compactMap: \(numberCompact)")
}

// Define a function called "printFilteredAnimals" that takes an array of strings and prints the filtered array containing
// only elements that contain the letter "o".
func printFilteredAnimals(_ arrParam: [String]) {
    let filteredArray = arrParam.filter { $0.contains("o") }
    print("Animals Arr: \(arrParam), Filtered Arr: \(filteredArray)")
}

// Define a function called "printFilteredNumbers" that takes an array of integers, filters the numbers that are even and greater than 6,
// and prints the original array and the filtered array.
func printFilteredNumbers(_ arrParam: [Int]) {
    let filteredNumbers = arrParam.filter { number in
        number % 2 == 0
    }.filter { isGreater(number: $0, 6) }
    
    print("Numbers Arr: \(arrParam), Filtered Arr: \(filteredNumbers)")
}

// Define a function called "isGreater" that takes two integers as parameters and returns a boolean indicating if the first number
// is greater than the second number.
func isGreater(number: Int, _ then: Int) -> Bool {
    let returnValue = number > then
    return returnValue
}

// Call the "main" function to begin the program's execution.

// ---Start--- //
main()
// ----------- //
