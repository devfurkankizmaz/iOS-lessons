import Foundation

// Hands-On #3

// A function to calculate the square of a given number.
// The function takes an optional integer 'number' as input and returns the square of the number.
// If 'number' is nil, the function returns 0.

func square(number: Int?) -> Int {
    var square: Int = 0

    // Check if the input number is not nil
    if let no = number {
        // Calculate the square of the non-nil number
        square = no * no
    }

    return square
}

// A function to check if a given number is odd.
// The function takes an integer 'number' as input and returns a boolean value (true if the number is odd, false otherwise).

func isOdd(number: Int) -> Bool {
    // Check if the number is even (divisible by 2)
    if number % 2 == 0 {
        return false // The number is even
    }
    return true // The number is odd
}

// Calculate the square of the number 10 using the 'square' function
let numSquared = square(number: 10)

// Check if the squared number is odd using the 'isOdd' function
if isOdd(number: numSquared) {
    print("Squared Number: \(numSquared) is Odd")
} else {
    print("Squared Number: \(numSquared) is Even")
}
