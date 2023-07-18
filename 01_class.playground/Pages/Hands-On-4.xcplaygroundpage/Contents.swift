import Foundation

// Hands-On #4

// Declare array of car brands with duplicates.
var brandsArr = ["BMW", "BMW", "Ford", "Audi", "BMC", "Renault"]

// Create a Set from the array to remove duplicates.
var brandsDict: Set<String> = Set(brandsArr)

// Convert the Set back to an array to get unique car brands.
var updatedBrandsArr = Array(brandsDict)

// Print the updated array with unique car brands.
print(updatedBrandsArr)

// Check if the first element of the original and updated arrays are the same.
if brandsArr[0] == updatedBrandsArr[0] {
    // If they are the same, append "Mercedes-Benz" to the updated array.
    updatedBrandsArr.append("Mercedes-Benz")
    print("After appending a new brand: \(updatedBrandsArr)")
} else {
    // If they are not the same, print a message indicating that they don't match.
    print("Not matched")
}
