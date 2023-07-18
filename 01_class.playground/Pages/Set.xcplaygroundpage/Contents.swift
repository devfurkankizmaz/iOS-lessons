import Foundation

// Set

// 1. What is Sets?
/**Set is a collection type that stores unique and unordered values of different types.**/

// 2. Creating and Declaring Sets

// Creating a Set of Integers
var numbers: Set<Int> = [1, 2, 3, 4, 5]

// Creating an empty Set of Strings
var names = Set<String>()

/**Alternatively, Swift allows you to create sets without specifying the type explicitly, and type inference will work just fine:**/

var uniqueCharacters: Set = ["a", "b", "c"]

// 3. Adding and Removing Elements
// Sets support adding and removing elements:

var favoriteFruits: Set<String> = ["Apple", "Banana", "Mango"]

favoriteFruits.insert("Orange") // Adds "Orange" to the Set.
favoriteFruits.remove("Banana") // Removes "Banana" from the Set.
favoriteFruits.removeAll() // Removes all elements from the Set.

// print(favoriteFruits)

// 4. Set Membership and Equality

let colors: Set<String> = ["Red", "Green", "Blue"]

let containsBlue = colors.contains("Blue") // containsBlue returns true because colors Set have "Blue"
let colorsCopy: Set<String> = ["Green", "Red", "Blue"]
let areEqual = colors != colorsCopy // areEqual returns false because colors Set and colorsCopy Set are equal

// 5. Iterating Over a Set
let ingredients: Set<String> = ["Flour", "Sugar", "Eggs"]

for ingredient in ingredients {
    print(ingredient)
}

// 6. Set Methods and Properties
// Swift Sets provide various methods and properties for efficient data manipulation:
var setOfNumbers: Set<Int> = [1, 2, 3, 4, 5]

let count = setOfNumbers.count // Gives the number of elements in the setOfNumbers Set.
let isEmpty = setOfNumbers.isEmpty // Returns true if the Set is empty. (in this case its return false)

setOfNumbers.removeAll() // Removes all elements from the Set.



