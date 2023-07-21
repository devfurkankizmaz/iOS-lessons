// Playground

// Define a function called "main"
func main() {
    // This code block will start when the Playground is executed

    let arr: [(name: String, kmY: Double, ef: EmissionFactor)] = [("Ahmet", 50.0, .ev),
                                                                  ("Mehmet", 100.0, .bike),
                                                                  ("Ali", 30.0, .diesel),
                                                                  ("Ayşe", 40.0, .lpg)]

    let dict = calcCFP(arr)

    // Print Dict Array
    print(dict)

    // Print Average of CFP value of Dict Array
    print("Kullanıcıların Ortalama CFP'si \(cfpAverage(dict))")
}

// Call the "main" function to begin the program's execution.
// ---Start--- //
main()
// ----------- //

func cfpAverage(_ arr: [[String: Double]]) -> Double {
    var sum: Double = 0
    arr.forEach { dict in
        guard let cfpValue = dict["CFP"] else {
            return
        }
        sum += cfpValue
    }
    return sum / Double(arr.count)
}

func calcCFP(_ arr: [(name: String, kmY: Double, ef: EmissionFactor)]) -> [[String: Double]] {
    var dictArr: [[String: Double]] = []

    arr.forEach { arr in
        let ef = arr.ef
        var cfpValue: Double = arr.kmY * ef.rawValue
        dictArr.append(["CFP": cfpValue, "kmV": arr.kmY])
    }
    return dictArr
}

enum EmissionFactor: Double {
    case ev = 600.0
    case lpg = 800.0
    case diesel = 1000.0
    case bike = 100.0
}

func printCFPStatus(_ cfpArray: [(name: String, cfp: Double)]) {
    cfpArray.forEach { cfp in
        switch cfp.cfp {
        case 0 ... 15000:
            print("\(cfp.name) -> \(cfp.cfp) -> Sağlıklı")
        default:
            print("\(cfp.name) -> \(cfp.cfp) -> Sağlıksız")
        }
    }
}
