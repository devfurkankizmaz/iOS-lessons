import Foundation


// 1. What are Conditions?
/**Conditions in Swift allow you to make decisions in your code based on certain conditions. You can use conditional statements to execute specific blocks of code only if certain conditions are met.**/

// 2. if Statement
/** The if statement is used to execute a block of code only if the given condition is true:**/

let temp = 25

if temp > 30 {
    print("It's a hot day.")
}

// 3. if-else Statement
/** The if-else statement is used to execute one block of code if the condition is true, and another block of code if the condition is false:**/

let time = 14

if time < 12 {
    print("Good morning!")
} else {
    print("Good afternoon!")
}


// 4. else-if Statement
/**You can chain multiple conditions using else-if statements:**/

let score = 85

if score >= 90 {
    print("Excellent!")
} else if score >= 80 {
    print("Good job!")
} else if score >= 70 {
    print("Keep it up!")
} else {
    print("You can do better.")
}

// 5. Nested if Statements
/**You can use nested if statements to check multiple conditions within one another:**/

let isRaining = true
let temperature = 20

if isRaining {
    if temperature < 15 {
        print("It's raining and cold.")
    } else {
        print("It's raining but not too cold.")
    }
} else {
    print("It's not raining.")
}

// 6. Switch Statement
/**The switch statement allows you to check the value of a variable against different cases and execute the corresponding block of code:**/

let day = "Sunday"

switch day {
case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday":
    print("Weekday")
case "Saturday", "Sunday":
    print("Weekend")
default:
    print("Invalid day")
}

