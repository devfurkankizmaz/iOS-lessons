import Foundation

// 1. What are Operators?
/**Operators are symbols or special characters in Swift that perform operations on variables, constants, and values. Swift provides various types of operators to manipulate and combine data efficiently.**/

// 2. Arithmetic Operators
/**Swift supports standard arithmetic operators for basic mathematical operations:**/

let a = 10
let b = 5

let addition = a + b // 15
let subtraction = a - b // 5
let multiplication = a * b // 50
let division = a / b // 2
let remainder = a % b // 0 (remainder of the division)

// 3. Assignment Operators
/**Assignment operators are used to assign values to variables:**/

var x = 10
let y = 5

x += y // x is now 15 (equivalent to x = x + y)
x -= y // x is now 10 (equivalent to x = x - y)
x *= y // x is now 50 (equivalent to x = x * y)
x /= y // x is now 10 (equivalent to x = x / y)
x %= y // x is now 0 (equivalent to x = x % y)

// 4. Comparison Operators
/** Comparison operators are used to compare values:**/
let i = 10
let j = 5

let isEqual = i == j // false (equal to)
let isNotEqual = i != j // true (not equal to)
let isGreater = i > j // true (greater than)
let isLess = i < j // false (less than)
let isGreaterOrEqual = i >= j // true (greater than or equal to)
let isLessOrEqual = i <= j // false (less than or equal to)

// 5. Logical Operators
/** Logical operators are used to combine or negate Boolean expressions:**/

let isSunny = true
let isWarm = false

let isNiceWeather = isSunny && isWarm // false (logical AND)
let isEitherNice = isSunny || isWarm // true (logical OR)
let isNotWarm = !isWarm // true (logical NOT)

// 6. Range Operators
/**Swift has two range operators, the closed range operator (...) and the half-open range operator (..<):**/

let closedRange = 1...5 // includes 1, 2, 3, 4, and 5
let halfOpenRange = 1..<5 // includes 1, 2, 3, and 4



