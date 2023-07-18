import Foundation

// Hands-On #1

// Initialize variables to store Fibonacci sequence elements.
var x = 0 // First element of the Fibonacci sequence
var y = 1 // Second element of the Fibonacci sequence
var fib = 0 // Variable to calculate and store the current Fibonacci number

// Generate and print the first 10 numbers of the Fibonacci sequence.
for _ in 0..<10 {
    // Calculate the next Fibonacci number by adding the last two numbers.
    fib = x + y
    
    // Update the previous two numbers in the sequence for the next iteration.
    x = y // The second number becomes the first number.
    y = fib // The current Fibonacci number becomes the second number.
    
    // Print the current Fibonacci number.
    print(fib)
}


