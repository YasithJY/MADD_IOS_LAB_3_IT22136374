//
//  FinalChallenge.swift
//  SE4041 - Practical 03: Student Management System
//  Student ID: IT22136374
//

import Foundation

print("================================================================")
print("SE4041 Practical 03 - Final Challenge: Student Management System")
print("================================================================\n")

// ================================================================
// Part A – Create a Grade Enum
// ================================================================
enum Grade: String {
    case a = "A"
    case aMinus = "A-"
    case bPlus = "B+"
    case b = "B"
    case bMinus = "B-"
    case cPlus = "C+"
    case c = "C"
    case cMinus = "C-"
    case f = "F"
}

// ================================================================
// Part B, C, & D – Create Student Struct with Computed Property & Method
// ================================================================
struct Student {
    // Stored Properties
    var studentID: String
    var name: String
    var mark: Int

    // Part C – Computed Grade Property
    var grade: Grade {
        switch mark {
        case 80...100:
            return .a
        case 75..<80:
            return .aMinus
        case 70..<75:
            return .bPlus
        case 65..<70:
            return .b
        case 60..<65:
            return .bMinus
        case 55..<60:
            return .cPlus
        case 45..<55:
            return .c
        case 40..<45:
            return .cMinus
        default:
            return .f
        }
    }

    // Part D – displayDetails Method
    func displayDetails() {
        print("ID: \(studentID)")
        print("Name: \(name)")
        print("Mark: \(mark)")
        print("Grade: \(grade.rawValue)")
    }
}

// ================================================================
// Part E – Create Students
// ================================================================
let students = [
    Student(studentID: "IT001", name: "Amal", mark: 72),
    Student(studentID: "IT002", name: "Nimali", mark: 45),
    Student(studentID: "IT003", name: "Ruwan", mark: 68),
    Student(studentID: "IT004", name: "Sanduni", mark: 90),
    Student(studentID: "IT005", name: "Kasun", mark: 38)
]

// ================================================================
// Part F – Display Students
// ================================================================
print("--- Part F: All Student Records ---")
for student in students {
    student.displayDetails()
    print("---------------------------------")
}
print()

// ================================================================
// Part G – Use filter (mark >= 50)
// ================================================================
print("--- Part G: Filter Passed Students (Mark >= 50) ---")
let passedStudents = students.filter { $0.mark >= 50 }
print("Passed student names:")
for student in passedStudents {
    print("- \(student.name) (\(student.mark) marks, Grade: \(student.grade.rawValue))")
}
print()

// ================================================================
// Part H – Use map
// ================================================================
print("--- Part H: Map Student Names ---")
let studentNames = students.map { $0.name }
print("All Student Names: \(studentNames)")
print()

// ================================================================
// Part I – Use reduce (Total Marks & Class Average)
// ================================================================
print("--- Part I: Reduce (Total Marks & Class Average) ---")
let totalMarks = students.reduce(0) { $0 + $1.mark }
let classAverage = Double(totalMarks) / Double(students.count)

print("Total Marks: \(totalMarks)")
print("Total Students: \(students.count)")
print("Class Average: \(classAverage)")
print()

// ================================================================
// Section 22 – Additional Challenges (Provisional Extension)
// ================================================================
print("================================================================")
print("Additional Challenges (Provisional Extensions)")
print("================================================================\n")

// 1. Validation with guard statement
print("--- 1. Student Record Validation with guard ---")

func validateAndRegisterStudent(id: String?, name: String?, mark: Int?) -> Student? {
    guard let validID = id, !validID.trimmingCharacters(in: .whitespaces).isEmpty else {
        print("Validation Error: Invalid or missing Student ID")
        return nil
    }

    guard let validName = name, !validName.trimmingCharacters(in: .whitespaces).isEmpty else {
        print("Validation Error: Student name cannot be empty")
        return nil
    }

    guard let validMark = mark, (0...100).contains(validMark) else {
        print("Validation Error: Mark must be between 0 and 100")
        return nil
    }

    print("Success: Validated student record for \(validName)")
    return Student(studentID: validID, name: validName, mark: validMark)
}

_ = validateAndRegisterStudent(id: nil, name: "Test", mark: 70)
_ = validateAndRegisterStudent(id: "IT006", name: "", mark: 70)
_ = validateAndRegisterStudent(id: "IT006", name: "Valid Student", mark: 105)
if let newStudent = validateAndRegisterStudent(id: "IT006", name: "Kavindi", mark: 84) {
    newStudent.displayDetails()
}
print()

// 2. Tuple Summary Function for Student Array
print("--- 2. Performance Summary Using Tuples ---")

func summarizePerformance(of studentList: [Student]) -> (minimum: Int, maximum: Int, average: Double)? {
    guard !studentList.isEmpty else {
        print("Summary Error: Student list is empty.")
        return nil
    }

    let marks = studentList.map { $0.mark }
    guard let minMark = marks.min(), let maxMark = marks.max() else {
        return nil
    }

    let total = marks.reduce(0, +)
    let avg = Double(total) / Double(marks.count)

    return (minimum: minMark, maximum: maxMark, average: avg)
}

if let summary = summarizePerformance(of: students) {
    print("Class Performance Summary:")
    print("Lowest Mark:  \(summary.minimum)")
    print("Highest Mark: \(summary.maximum)")
    print("Mean Average: \(summary.average)")
}
print()

// 3. Value Type vs Reference Type Demonstration
print("--- 3. Value Type vs Reference Type Demonstration ---")

// Value Type (struct): Copying produces independent data
var originalStudent = Student(studentID: "IT010", name: "Original", mark: 50)
var copiedStudent = originalStudent // Independent copy
copiedStudent.mark = 95

print("Struct (Value Type) Behavior:")
print("Original Student Mark: \(originalStudent.mark) (Unchanged at 50)")
print("Copied Student Mark:   \(copiedStudent.mark) (Mutated copy at 95)")

// Reference Type (class): References point to the same instance
class StudentRecordClass {
    var studentID: String
    var name: String
    var mark: Int

    init(studentID: String, name: String, mark: Int) {
        self.studentID = studentID
        self.name = name
        self.mark = mark
    }
}

let originalClassRef = StudentRecordClass(studentID: "IT010", name: "Original", mark: 50)
let sharedClassRef = originalClassRef // Points to identical memory reference
sharedClassRef.mark = 95

print("\nClass (Reference Type) Behavior:")
print("Original Class Reference Mark: \(originalClassRef.mark) (Shared reference mutated to 95)")
print("Shared Class Reference Mark:   \(sharedClassRef.mark) (Points to same underlying instance)")
