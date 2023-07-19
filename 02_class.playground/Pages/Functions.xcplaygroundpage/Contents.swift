import Foundation

// Functions

// What is Function?
/**Functions are blocks of code that perform a specific task or calculate a result. In Swift, functions are first-class citizens, which means they can be assigned to variables, passed as arguments, and returned from other functions.**/

//1. Function Syntax
/**The syntax for defining a function in Swift is as follows:**/

/*****
 func functionName(parameter1: Type, parameter2: Type, ...) -> ReturnType {
    Function body
    Code that performs the task
    return result  Optional return statement
}*/

/****
 func: The keyword used to define a function.
 functionName: The name of the function, which should be descriptive and follow Swift naming conventions.
 parameter1, parameter2, ...: Input parameters passed to the function (optional).
 Type: Data type of each parameter.
 ReturnType: Data type of the value the function returns (optional).
 */

// 2. Defining Functions:
/** functions are defined using the 'func' keyword, followed by the function name, a set of parentheses '()', and a return type (if any). Here's an example of a simple function that prints a greeting:**/

func sayGoodBye() {
    print("Good Bye!")
}

// Calling Function
sayGoodBye()

// 3. Function Parameters:
/**Functions can also accept input values known as parameters, which allow you to pass data into the function. Parameters are defined inside the parentheses and separated by commas. Here's an example of a function that takes a name as a parameter and prints a personalized greeting:**/

func greeterName(name:String, lastName:String, age:Int) {
    print("\(name) \(lastName) is \(age) years old.")
}

// Calling Function
greeterName(name: "Ahmet", lastName: "Demir", age: 25)

// 3. Function Return Values:
/**Functions can return values using the 'return' keyword followed by the value to be returned. When a function has a return type, you must use the '->' arrow notation to specify the return type. Here's an example of a function that adds two integers and returns the result:**/

func sumNum(x:Int, y:Int) ->Int {
    return x+y
}

// Calling Function
let sum = sumNum(x: 5, y:10)
print("The sum is \(sum)")

// 4. Function Overloading:
/**Swift allows you to define multiple functions with the same name but different parameter types or numbers. This is called function overloading. The compiler determines which function to call based on the provided arguments. Here's an example of function overloading:**/

func sumNumbers(a: Int, b: Int) -> Int {
    return a + b
}

func sumNumbers(a: Double, b: Double) -> Double {
    return a + b
}

// 5. Default Parameter Values:
/**You can give function parameters default values. This means that the function can be called without providing a value for that parameter if needed. Default parameter values should be defined at the end of the parameter list. Here's an example:**/

func multiply(i: Int = 5 , j:Int) -> Int {
    i*j
}

// Calling Function
let multiplied = multiply(j:2)
// You can also overwrite on default parameter
// let multiplied = multiply(i:10, j:2) // Returns 20 in this case
print("Multiply: \(multiplied)") // Returns 10 in this case

// 6. Declaring 'inout' Parameters in Function:
var sayi = 2

func doubleIt(sayi: inout Int) {
    // Function implementation that modifies the parameter
    sayi *= 2
}
// Printing value of sayi before using doubleIt
print(sayi) // Prints 2
// Calling doubleIt function
doubleIt(sayi: &sayi)
// After calling doubleIt function with variable sayi inout parameter
// It will be modify value of sayi
print(sayi) // Prints 4
