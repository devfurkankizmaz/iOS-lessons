// Playground

let arr: [(city: String, temp: Double, weather: Weather)] = [("Istanbul", 27.0, .sunny),
                                                             ("New York", 23.5, .cloudy),
                                                             ("London", 19.0, .rainy),
                                                             ("Moscow", 5.0, .snowy)]
enum Weather: String {
    case rainy
    case snowy
    case cloudy
    case sunny
}

// Define a function called "main"
func main() {
    // This code block will start when the Playground is executed
    print(weatherStatus("Moscow"))
}

// Call the "main" function to begin the program's execution.
// ---Start--- //
main()
// ----------- //

func weatherStatus(_ city: String) -> String {
    var status = ""
    arr.forEach { c in
        if c.city == city {
            switch c.weather {
            case .sunny:
                status = "It's sunny today in \(c.city), Temp: \(c.temp)"
            case .cloudy:
                status = "It's cloudy today in \(c.city), Temp: \(c.temp)"
            case .rainy:
                status = "It's rainy today in \(c.city), Temp: \(c.temp)"
            case .snowy:
                status = "It's snowy today in \(c.city), Temp: \(c.temp)"
            }
        }
    }
    return status
}
