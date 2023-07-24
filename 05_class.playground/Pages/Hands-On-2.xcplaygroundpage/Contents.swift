import Foundation

// Define an enumeration called "Usage" to represent power usage in kWh for different products
enum Usage: Double {
    case utu = 5.0
    case sacKurutma = 12.0
    case klima = 90.0
    case bulMak = 22.0
}

// Define a struct called "User" to represent a user with their name and products
struct User {
    var name: String? // Optional property to store the user's name
    var products: [Product]? // Optional array property to store the user's products
}

// Define a struct called "Product" to represent a product with its title and energy consumption
struct Product {
    var title: String? // Optional property to store the product's title
    var kwhM: Usage? // Optional property to store the product's monthly energy consumption in kWh
    var kwhY: Double? // Optional property to store the product's yearly energy consumption in kWh

    // Initializer to create a Product instance with title and monthly usage in kWh
    init(title: String?, kwhM: Usage?) {
        guard let tempKwhM = kwhM?.rawValue else { return }
        kwhY = tempKwhM * 12
        self.title = title
        self.kwhM = kwhM
    }
}

// Define a function called "main"
func main() {
    // This code block will start when the Playground is executed
    let products = [
        Product(title: "Ütü", kwhM: .utu),
        Product(title: "Saç Kurutma", kwhM: .sacKurutma),
        Product(title: "Klima", kwhM: .klima),
        Product(title: "Bulaşık Makinası", kwhM: .bulMak)
    ]

    let users = [
        User(name: "Furkan", products: [products[0], products[1]]),
        User(name: "Veli", products: [products[2], products[3]]),
        User(name: "Ali", products: [products[0], products[3]])
    ]

    // First Example
    // Print(calcElectricityUsage(products))

    // Second Example
    calcUsersElectricityUsage(users)
}

// Call the "main" function to begin the program's execution.
// ---Start--- //
main()
// ----------- //

// Define a function to calculate and print electricity usage for each user
func calcUsersElectricityUsage(_ usersArr: [User]) {
    var sumkwhM = Double()
    var sumkwhY = Double()
    var newProductsStr = String()

    // Loop through each user in the usersArr
    usersArr.forEach { user in
        // Unwrap the user's name and print it in uppercase
        guard let unwrappedUsername = user.name else { return }
        print("Username: \(unwrappedUsername.uppercased())")

        // Unwrap the user's products and calculate total monthly and yearly usage
        guard let unwrappedProduct = user.products else { return }
        sumkwhM = 0
        sumkwhY = 0

        // Loop through each product in the user's products
        unwrappedProduct.forEach { product in
            // Unwrap the product's title, monthly usage, and yearly usage
            guard let unwrappedProductTitle = product.title,
                  let unwrappedProductkmwM = product.kwhM,
                  let unwrappedProductkmwY = product.kwhY else { return }

            // Add the monthly and yearly usage to the total usage
            sumkwhM += unwrappedProductkmwM.rawValue
            sumkwhY += unwrappedProductkmwY

            // Build a string with the product titles for printing
            newProductsStr += "\(unwrappedProductTitle.uppercased()), "
        }

        // Print the user's products, total monthly usage, and total yearly usage
        print("Products : \(newProductsStr)")
        print("Monthly: \(sumkwhM)")
        print("Yearly: \(sumkwhY)")
        print("################")

        // Reset Products String after Printing
        newProductsStr = ""
    }
}

func calcElectricityUsage(_ productsArr: [Product]) -> [String] {
    var newArr: [String] = []
    productsArr.forEach { product in
        guard let unwrappedProductTitle = product.title,
              let unwrappedProductYearly = product.kwhY,
              let unwrappedProductMonthly = product.kwhM else { return }

        newArr.append("Title: : \(unwrappedProductTitle) Monthly Usage: : \(unwrappedProductMonthly.rawValue) Yearly: \(unwrappedProductYearly)")
    }

    return newArr
}

// Custom Print Function
func Print(_ input: Any) {
    // Custom print function to handle arrays and regular output
    if let inputArr = input as? [Any] {
        print("<-----Array Output----->")
        var count = 0
        inputArr.forEach { i in
            print("\(count): \"\(i)\"")
            count = count + 1
        }
        print("<---------------------->")
    } else { print("Output: \"\(input)\"") }
    print("")
}
