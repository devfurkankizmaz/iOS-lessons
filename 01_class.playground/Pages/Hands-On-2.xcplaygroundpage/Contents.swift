import Foundation

// Hands-On #2

// Define an array of car brands.
var brands = ["Toyota", "Ford", "Honda", "BMC", "Nissan", "Audi", "BMW"]

// The brand to search for in the array.
let search = "Honda"

// Initialize variables to track the current index of the found brand and whether it was found.
var currentIndex = Int()
var isFounded = Bool()

// Print all the brands in the array.
print("All brands: \(brands)")

// Search for the given brand in the array using a for-loop.
for i in 0..<brands.count {
    if brands[i] == search {
        currentIndex = i
        isFounded = true
    }
}

// If the brand is found (currentIndex >= 0), remove it from the array.
if currentIndex >= 0 {
    brands.remove(at: currentIndex)
}

// Check if the brand was not found and display an appropriate message.
if !isFounded {
    print("Car not found with the given brand: \(search)")
} else {
    // Print the updated brands array after removing the searched brand.
    print("Brands after removing the searched brand: \(brands)")
}

