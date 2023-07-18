import Foundation

// Hands-On #3

// Define dictionaries representing user information.
let userDict1: [String: String] = ["Name": "Ahmet", "LastName": "Tekin", "Age": "20"]
let userDict2: [String: String] = ["Name": "Mehmet", "LastName": "Celik", "Age": "20"]
let userDict3: [String: String] = ["Name": "Furkan", "LastName": "Kizgin", "Age": "23"]

// Initialize a boolean variable to track if a user with age "20" is found.
var isFounded = Bool()

// Create an array of dictionaries to store user information.
var dictArr = [userDict1, userDict2, userDict3]

// Iterate through each dictionary in the array.
for dict in dictArr {
    // Check if the "Age" key in the dictionary has the value "20".
    switch dict["Age"] {
    case "20":
        // If a user with age "20" is found, print their name and age.
        print("\(dict["Name"] ?? "") is 20 years old.")
        isFounded = true
    default:
        break
    }
}

// If no user with age "20" is found, print a message indicating so.
if !isFounded {
    print("Not found")
}



