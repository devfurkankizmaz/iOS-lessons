import Foundation

// Hands-On #0

// A function to send student information based on their scores in three subjects.
// The function takes three parameters: 'mat' (mathematics), 'ede' (education), and 'fen' (science),
// where 'mat' has a default value of 50.
// The function returns a tuple containing the average score and a boolean value indicating the student's status.

func sendUserInfo(mat: Int = 50, ede: Int, fen: Int) -> (average: Int, status: Bool) {
    // Calculate the average score of the student based on the provided scores in 'mat', 'ede', and 'fen'.
    let avg: Int = (mat + ede + fen) / 3
    
    // Create a tuple 'studentInfo' to store the average score and status of the student.
    var studentInfo: (average: Int, status: Bool) = (0, false)
    
    // Check if the average score is greater than or equal to 50.
    if avg >= 50 {
        // If the student's average score is 50 or above, update the 'studentInfo' tuple accordingly.
        studentInfo.average = avg
        studentInfo.status = true
        // Alternatively, the 'studentInfo' tuple can be directly assigned as follows:
        // studentInfo = (avg, true)
    } else {
        // If the student's average score is below 50, update the 'studentInfo' tuple accordingly.
        studentInfo.average = avg
        studentInfo.status = false
        // Alternatively, the 'studentInfo' tuple can be directly assigned as follows:
        // studentInfo = (avg, false)
    }
    
    // Return the 'studentInfo' tuple containing the average score and the status of the student.
    return studentInfo
}

// Test the 'sendUserInfo' function with sample scores.
let returnValue = sendUserInfo(mat: 50, ede: 30, fen: 90)

// Print the average score and status of the student based on the returned tuple.
print("Average Score: \(returnValue.average)")
print("Student Status: \(returnValue.status)")

