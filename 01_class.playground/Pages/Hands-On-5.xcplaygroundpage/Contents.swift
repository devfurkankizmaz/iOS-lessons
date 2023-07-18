import Foundation

// Hands-On #5

// Initial array of numbers.
var numberList = [2, 3, 16, 18, 27, 53, 46, 71, 17, 14, 23, 61, 22, 9]

// The number used as a divider to filter the array.
let divider = 2

// An array to store numbers from the initial array that are divisible by the divider.
var resultArray: [Int] = []

// Use forEach to iterate through each number in the numberList.
numberList.forEach({ number in
    // Check if the number is divisible by the divider (remainder is zero).
    if number % divider == 0 {
        // If divisible, add the number to the resultArray.
        resultArray.append(number)
    }
})

// Print the original numberList and the resultArray with numbers divisible by the divider.
print("First List: \(numberList)")
print("Result List: \(resultArray)")

// Print the count of numbers that are divisible by the divider in the numberList.
print("Divided count in the numberList Array: \(resultArray.count)")

// Print the count of numbers that are not divisible by the divider in the numberList.
print("Undivided Count in the numberList Array: \(numberList.count - resultArray.count)")

