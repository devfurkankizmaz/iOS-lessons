import Foundation

// Dictionary

// 1. What is Dictionaries?
/**A Dictionary in Swift is a collection type that allows you to store key-value pairs. Each value in the dictionary is associated with a unique key, and you can use that key to access the corresponding value efficiently.**/

// 2. Creating and Declaring Dictionaries
/** In Swift, you can create a Dictionary using the following syntax:**/

// Creating a Dictionary with String keys and Int values
var scores: [String: Int] = ["Veli": 95, "Ali": 87, "Ayşe": 72]

// Creating an empty Dictionary with String keys and Double values
var measurements = [String: Double]()

/**Swift also provides type inference for Dictionaries, so you can create them without explicitly specifying the types:**/
var ages = ["Ahmet": 30, "Mehmet": 25, "Ece": 28] // Inferred as [String: Int]

// 3. Accessing and Modifying Dictionary Elements

// You can access and modify values in a dictionary using the corresponding keys:
let johnScore = scores["Veli"] // 95 (accessing value using key)

// Other Usage
// Also u can access value of "Veli" directly
// print(scores["Veli"])

// Remove value in the scores with specify key
scores.removeValue(forKey: "Ayşe")

// Update value in the scores with specify key and new value
scores.updateValue(90, forKey: "Veli")

scores["Ece"] = 90 // Modifying the value associated with the "Ece" key

// 4. Adding and Removing Elements
// Adding and removing elements from a dictionary is straightforward:
scores["Osman"] = 80 // Adding a new key-value pair
scores["Ahmet"] = nil // Removing the "Ahmet" key-value pair
scores.removeValue(forKey: "Ali") // Another way to remove a key-value pair


// 5. Dictionary Properties and Methods
// Swift Dictionaries provide several useful properties and methods:

let keys = Array(scores.keys) // Array of keys in the dictionary
let values = Array(scores.values) // Array of values in the dictionary
let count = scores.count // Number of key-value pairs in the dictionary
let isEmpty = scores.isEmpty // Returns true if the dictionary is empty

// 6. Iterating Over a Dictionary
// You can iterate over the key-value pairs in a dictionary using a for-in loop:

let grades: [String: String] = ["Ali": "A", "Veli": "B", "Mehmet": "A+"]

for (name, grade) in grades {
    print("\(name) scored \(grade)")
}

