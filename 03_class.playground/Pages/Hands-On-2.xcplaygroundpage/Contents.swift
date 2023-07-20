// Hands-On #2

// Define the main function
func main() {
    // Create an array of integers named "numbers"
    let numbers = [7, 3, 1, 2, 46, 54, 31, 100, 39, 432, 122, 543, 139]
    
    // Call the function "printFilteredNumbers" and pass the "numbers" array as an argument.
    printFilteredNumbers(numbers)
}

// Define a function called "printFilteredNumbers" that takes an array of integers as a parameter.
func printFilteredNumbers(_ arrParam: [Int]) {
    // Use the "filter" function on the input array to create a new array named "filteredNumbers".
    // The new array will only contain numbers that are greater than 10 (using the "isGreater" function)
    // and are divisible by 3 (using the "isItDivisible" function).
    let filteredNumbers = arrParam.filter({ isGreater($0, 10) }).filter({ isItDivisible($0) })
    
    // Print the original "numbers" array and the "filteredNumbers" array.
    print("Numbers Arr: \(arrParam), Filtered Arr: \(filteredNumbers)")
}

// Define a function called "isGreater" that takes two integers as parameters and returns a boolean.
// The function checks if the first number is greater than the second number and returns the result.
func isGreater(_ number: Int, _ then: Int) -> Bool {
    let returnValue = number > then
    return returnValue
}

// Define a function called "isItDivisible" that takes an integer as a parameter and returns a boolean.
// The function checks if the number is divisible by 3 (i.e., the remainder when divided by 3 is 0) and returns the result.
func isItDivisible(_ number: Int) -> Bool {
    return number % 3 == 0
}

// Call the "main" function to begin the program's execution.
// ---Start--- //
main()
// ----------- //
