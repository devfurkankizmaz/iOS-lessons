// Hands-On #2

// A function to set grades for students based on their scores.
// The function takes an array of tuples containing the student name and score.
// It returns an optional array of tuples, where each tuple contains the student name and their corresponding grade.

func setGrade(studentArr: [(name: String, score: Int)]) -> [(name: String, grade: String)]? {
    // Iterate through each student in the input array
    for student in studentArr {
        // Use a switch statement to determine the grade based on the student's score
        switch student.score {
        case 90...100:
            // If the score is between 90 and 100 (inclusive), assign grade "AA"
            return [(name: student.name, grade: "AA")]
        default:
            // For all other scores, do nothing (continue to the next student)
            break
        }
    }
    // If no student's score falls into the defined ranges (90 to 100), return nil
    return nil
}

// An array of students with their names and scores
let students = [(name: "Ahmet", score: 40),
                (name: "Mehmet", score: 90),
                (name: "Can", score: 10),
                (name: "Ali", score: 85)]

// Call the setGrade function to get the currentInfo (array of tuples: student name and grade)
let currentInfo = setGrade(studentArr: students)

// Unwrap the optional currentInfo using a guard statement
guard let info = currentInfo else {
    // If currentInfo is nil, exit the program with a fatalError message
    fatalError("Cannot be nil")
}

// Print the info, which contains the names and corresponding grades for students with scores between 90 and 100
print(info)
