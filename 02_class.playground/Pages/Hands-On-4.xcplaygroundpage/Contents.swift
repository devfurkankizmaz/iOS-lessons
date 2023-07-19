import Foundation

// Hands-On #5

// The value of π (pi) as a constant with a data type of Double.
let PI: Double = 3.14

// The radius of the circle with a value of 3.0 as a constant of type Double.
let r: Double = 3.0

// A function to calculate the area of a circle based on its radius 'r'.
// The function takes the radius 'r' as input and returns the calculated area as a Double.
func circleArea(r: Double) -> Double {
    // Calculate the area of the circle using the formula: area = π * r^2
    let area: Double = PI * (r * r)
    return area
}

// A function to calculate the perimeter (circumference) of a circle based on its radius 'r'.
// The function takes the radius 'r' as input and returns the calculated perimeter as a Double.
func circlePerimeter(r: Double) -> Double {
    // Calculate the perimeter of the circle using the formula: perimeter = 2 * π * r
    let perimeter: Double = 2 * PI * r
    return perimeter
}

// Use a switch statement to determine the size of the circle based on its area.
// Call the 'circleArea' function to get the area of the circle with radius 'r'.
switch circleArea(r: r) {
case 50...100:
    print("A Big Circle") // The area of the circle falls between 50 and 100 (inclusive).
case 1...50:
    print("A Middle Circle") // The area of the circle falls between 1 and 50 (inclusive).
default:
    print("Undefined Circle") // The area of the circle does not fall into the defined ranges.
}

// Print the calculated area of the circle using the 'circleArea' function and radius 'r'.
print("The area of the circle is \(circleArea(r: r))")

