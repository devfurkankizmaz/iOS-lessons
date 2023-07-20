// Hands-On #3

// Define a function called "main"
func main() {
    // This code block will start when the Playground is executed

    // Create a constant named "banana" of type "Fruits" and assign the value "Fruits.banana" to it.
    let banana = Fruits.banana

    // Call the function "checkColor" and pass the "banana" constant as an argument.
    // The function will return the raw value of the "banana" enumeration case, which is "Yellow".
    // The result will be stored in a constant named "color".
    let color = checkColor(banana)
    
    // Print the value of the "color" constant, which is "Yellow".
    print(color)
}

// Define an enumeration called "Fruits" with a raw value of type "String".
// It has four cases: "apple" with a raw value of "Red", "banana" with a raw value of "Yellow",
// "watermelon" with a raw value of "Green", and "orange" with a raw value of "Orange".
enum Fruits: String {
    case apple = "Red", banana = "Yellow", watermelon = "Green", orange = "Orange"
}

// Define a function called "checkColor" that takes a parameter of type "Fruits" and returns a "String".
// The function checks the value of the input "fruit" and returns its raw value as a "String".
func checkColor(_ fruit: Fruits) -> String {
    switch fruit {
    case .apple:
        return fruit.rawValue
    case .banana:
        return fruit.rawValue
    case .orange:
        return fruit.rawValue
    case .watermelon:
        return fruit.rawValue
    }
}


// Call the "main" function to begin the program's execution.
// ---Start--- //
main()
// ----------- //
