// Enumarators

// Define the main function
func main() {
    // Call the "checkDirection" function with the "Compass.north" as an argument.
    checkDirection(Compass.north)

    // Create a constant "day" of type "Weekdays" and assign the value "Weekdays.sunday" to it.
    let day = Weekdays.sunday

    // Call the "isWeekend" function on the "day" constant to check if it's a weekend day.
    print(day.isWeekend())

    // Create a constant "car" of type "Vehicle" and assign the value "Vehicle.audi(1000, "White", 200)" to it.
    let car = Vehicle.audi(1000, "White", 200)

    // Print the "car" constant, which will display its associated values (cc, color, speed).
    print(car)
}

// Define an enumeration called "Vehicle" with two cases: "audi" and "ferrari", both having associated values.
enum Vehicle {
    case audi(_ cc: Int, _ color: String, _ speed: Int)
    case ferrari(_ cc: Int, _ color: String, _ speed: Int)
}

// Define an enumeration called "Weekdays" representing different days of the week.
enum Weekdays {
    case sunday, monday, tuesday, wednesday, thursday, friday, saturday

    // Define a method called "isWeekend" that returns a boolean indicating if the day is a weekend day (Sunday or Saturday).
    func isWeekend() -> Bool {
        switch self {
        case .sunday, .saturday:
            return true
        default:
            return false
        }
    }
}

// Define an enumeration called "Compass" with raw values of type "String" representing directions.
enum Compass: String {
    case north = "Kuzey"
    case south = "Güney"
    case west = "Doğu"
    case east = "Batı"
}

// Define a function called "checkDirection" that takes a "Compass" parameter and prints its raw value.
func checkDirection(_ direction: Compass) {
    switch direction {
    case .east, .north, .south, .west:
        print(direction.rawValue)
    }
}

// Call the "main" function to begin the program's execution.

// ---Start--- //
main()
// ----------- //
