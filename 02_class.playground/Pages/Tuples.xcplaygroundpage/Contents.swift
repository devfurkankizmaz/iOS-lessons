import Foundation

// What are Tuples
/**A tuple is a lightweight data structure that allows you to group multiple values together into a single compound value. Tuples are useful when you need to combine different types of values temporarily without creating a separate custom data type. In this tutorial, we will explore how to create, access, and use tuples in Swift.*/

// 1. Creating Tuples
/**A tuple is defined by enclosing values inside parentheses '()'. Each value in the tuple is separated by a comma. Here's an example of creating a tuple to represent a person's name and age:**/

// Method 1 - Named Tuples:
let student = (fullName:"Ahmet Demir", age:25)
// Access
print("\(student.fullName) \(student.age) years old.")

// Method 2 - Decomposition:
let studentTuple = ("Ali Celik", 35)
// Access
print("\(studentTuple.0) \(studentTuple.1) years old.")
let (fullName, age) = studentTuple
print("\(fullName) \(age) years old.")


// 2. Returning Multiple Values from Functions
/**Tuples are handy when you want to return multiple values from a function. Instead of creating a custom data type or using an array, you can use a tuple to return multiple values conveniently:**/

func getFirstAndLastFromArr(randomArr:[String]) -> (first:String, last:String) {
    let first:String = randomArr[0]
    let last:String = randomArr[3]
    
    return (first, last)
}

// Calling the Function
let arr:[String] = ["A","z","9","?"]
let tupleFirstAndLast = getFirstAndLastFromArr(randomArr: arr)
print(tupleFirstAndLast)
