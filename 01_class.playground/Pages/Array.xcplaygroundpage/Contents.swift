import Foundation

// Array

//1. What is Array?
/**An array in Swift is a collection type that stores values of the same type and allows access to those values through numerical indices.**/

// 2. Creating and Declaring Array
// In Swift, there are two main ways to create an array:

// Method 1: Creating an Array with Literals

// An array that holds values of type String.
// String tipinde değerleri tutan bir dizi.
var fruits: [String] = ["Apple", "Banana", "Strawberry"]


// Method 2: Creating an Empty Array

// You can create an empty array using this method.
// var fruits: [String] = []

// An array that holds values of type Integer
// Swift allows you to create arrays without specifying the type explicitly,
// and in most cases, type inference will work just fine:
var numbers = [1,2,3,4,5] // Inferred as [Int]

// 3. Accessing Array Elements

let firstFruit = fruits[0]
// print(firstFruit) will print fruit at index 0 value "Apple"
let thirdFruit = fruits[2]
// print(thirdFruit) will print fruit at index 2 value "Strawberry"

// Also you can call fruits[index] value directly
print("First value of fruits array: \(fruits[0])")
// Other usage
// print("First value of fruits array: \(fruits.first)")

// 4. Modifying Arrays

// Adding Elements
fruits.append("Orange") // Adds "Orange" to the end of the array.
fruits += ["Grapes", "Watermelon"] // Appends multiple elements to the array.
// Updating Elements
fruits[1] = "Pineapple" // Replaces the element at index 1 with "Pineapple".
// Removing Elements
//fruits.remove(at: 2) // Removes the element at index 2 (in this case, "Strawberry").
//fruits.removeFirst() // Removes the element at index 0 (in this case, "Apple")
//fruits.removeLast() // Removes the last element in the array.
//fruits.removeAll() // Removes all elements in the array.

// 5. Array Length and Checking Empty
let count = fruits.count // Gives the number of elements in the array.
let isEmpty = fruits.isEmpty // Returns true if the array is empty.

// 6. Iterating Over an Array
/**Swift offers various ways to iterate over an array, like using a for-loop or for-in loop:**/

for fruit in fruits {
    print(fruit)
}

// Other usage
/*fruits.forEach { fruit in
    print(fruit)
}*/

