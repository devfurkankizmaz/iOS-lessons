import Foundation

// What are Optional Types:
/**In Swift, optionals are a way to indicate that a variable or property may have a value, or it may not have a value (i.e., it can be nil). To declare an optional type, you use a question mark '?' after the type. Here's an example of declaring optional types:**/

var optionalString: String? // This is an optional String
var optionalInt: Int?       // This is an optional Int
var optionalArray: [Int]?   // This is an optional Array of Int

// What are Non-Optional Types:
/**Non-optional types, on the other hand, always hold a value and cannot be nil. To declare a non-optional type, you simply define it without a question mark. Here's an example:**/

var nonOptionalString: String   // This is a non-optional String
var nonOptionalInt: Int         // This is a non-optional Int
var nonOptionalArray: [Int]     // This is a non-optional Array of Int


// 1. Using Optionals:
/**To assign a value to an optional, you can use the assignment operator '=', followed by the value. If the value is nil, you can explicitly set it as nil using the 'nil' keyword.**/

var name: String? = "Furkan"
name = nil

// 3. Unwrapping Optionals - Optional Binding:
/**To safely use the value inside an optional, you need to "unwrap" it. One way to do this is by using optional binding with 'if let' or 'guard let' statements:**/

/***** For this examples 30-44 lines can not run in playground because guard let and if let returns value, this should be in function, thats why I added comment lines for this one*/

// if let usage:
/****
var optionalAge: Int? = 18
if let age = optionalAge {
    print("Your age is \(age)")
} else {
    print("No age available.")
}*/

// guard let usage:
/****
var optionalIP: String? = "123.32.2.98"
guard let ip = optionalIP else {
    print("No IP available.")
    return
}
 print("Your ip: \(name)")
*/



// 4. Force Unwrapping
/**Sometimes, you might be sure that an optional has a value, and you want to use it directly. In such cases, you can use forced unwrapping with the exclamation mark '!'. However, use this with caution because if the optional is nil, it will lead to a runtime crash.**/

var optionalName: String? = "Ahmet"
let nameUnwrapped = optionalName!

// 5. Unwrapping with Functions
// if let usage:
let firstName:String? = nil
func unwrapFirstName(firstName: String?) {
    if let fn = firstName  {
        print(fn)
        return
    } else {
        // In this case this code block will be run because firstName has a nil value
        print("It's not avaible value")
    }
}
// guard let usage:
let color:String? = "Blue"
func unwrapColor(optionalColor: String?) {
    // In this case its will skip guard section because color have a value
    guard let color = optionalColor else {
        print("It's not avaible value")
        return
    }
    print(color)
}

