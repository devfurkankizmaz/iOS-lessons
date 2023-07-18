import Foundation

// 1. What is Variable?
/**In Swift, a variable is a named container that holds a value of a specific type. Variables can be changed after their initial assignment, making them mutable.**/

// 2. Declaring Variables
// In Swift, you can declare a variable using the var keyword, followed by the variable name and its type:

var age: Int = 25

// Swift supports type inference, so you can omit the type declaration:

var name = "John" // Inferred as String

// 3. Assigning Values to Variables
// You can assign a new value to a variable after its declaration:

var score: Double = 90.5
score = 95.0 // Reassigning the variable with a new value

// 1. What is Constant
/**Constants are like variables, but their values cannot be changed after assignment. In Swift, you can declare a constant using the let keyword:**/

// 2. Advantages of Using Constants
/**Safety: Constants prevent accidental modification of values, reducing the risk of unintended side effects in your code.**/
/**Readability: Constants provide meaningful names for values that should not be changed, improving the clarity of your code.**/
/**Performance: The Swift compiler can make optimizations based on the knowledge that a value won't change, potentially leading to better performance.**/

// 3. Declaring Constants

let PI: Double = 3.14
let maximumValue = 100
// PI = 3.25 Can not change the value of PI

