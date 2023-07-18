import Foundation

// 1. What are Loops?
/**Loops are control flow structures in Swift that allow you to repeat a block of code multiple times. Loops help reduce redundancy and make your code more efficient.**/

// 2. for-in Loop
/**The for-in loop is used to iterate over sequences, such as arrays, ranges, or strings:**/

let fruits = ["Apple", "Banana", "Orange"]

for fruit in fruits {
    print(fruit)
}

// 3. While Loop
/**The while loop repeatedly executes a block of code as long as the given condition is true:**/

var count = 1

while count <= 5 {
    print(count)
    count += 1
}

// 4. Skipping and Exiting Loops
/**You can use the continue keyword to skip the current iteration and the break keyword to exit the loop prematurely:**/

for num in 1...10 {
    if num % 2 == 0 {
        continue // Skip even numbers
    }
    if num > 7 {
        break // Exit the loop when num is greater than 7
    }
    print(num)
}

// 5. Using Loops with Dictionaries

let scores = ["Ahmet": 90, "Ayşe": 85, "Zeynep": 95]

for (name, score) in scores {
    print("\(name) scored \(score)")
}





