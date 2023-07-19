import Foundation

// Hands-On #1

func AsalMi(say: Int) -> Bool {
    // A prime number is a natural number greater than 1
    // that has no positive divisors other than 1 and itself.

    // Check if the number is less than or equal to 1
    if say <= 1 {
        return false // Numbers less than or equal to 1 are not prime
    }
    
    // The upper limit of divisors to check is half of the number
    // since a number cannot have divisors greater than half of itself.
    let upperLimit = Int(say/2)
    for i in 2...upperLimit {
        if say % i == 0 {
            return false // The number has a divisor other than 1 and itself
        }
    }
    
    return true // The number has no divisors other than 1 and itself, it is prime
}

// Function to find prime numbers from an array of integers
func AsallariBul(sayDizi: [Int]) -> [Int]{
    // Declaration empty variable
    var asalSayilar: [Int] = []
        
        for sayi in sayDizi {
            if AsalMi(say: sayi) {
                asalSayilar.append(sayi)
            }
        }
        
        return asalSayilar
}

// Test the function with an array of numbers
let sayilar = [4, 5, 6, 7, 8, 9, 10, 11]
let asalSayilar = AsallariBul(sayDizi: sayilar)
print("Prime numbers in the array: \(asalSayilar)")
