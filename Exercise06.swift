//
//  Exercise06.swift
//  SE4041 - Practical 03: Structures and Classes
//  Student ID: IT22136374
//

import Foundation

print("==================================================")
print("SE4041 Practical 03 - Exercise 06: Structures & Classes")
print("==================================================\n")

// --------------------------------------------------
// Section 14: Structures & Stored Properties
// --------------------------------------------------
print("--- Section 14: Structures & Memberwise Initializer ---")

struct BasicStudent {
    var name: String
    var mark: Int
    var registered: Bool = true
}

let student = BasicStudent(name: "Amal", mark: 72)
print("Student Name: \(student.name)")
print("Student Mark: \(student.mark)")
print("Registered: \(student.registered)")
print()

// --------------------------------------------------
// Section 15: Computed Properties
// --------------------------------------------------
print("--- Section 15: Computed Properties ---")

// Example 1: Rectangle Area
struct Rectangle {
    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }
}

let rectangle = Rectangle(width: 4, height: 3)
print("Rectangle (width: 4, height: 3) area: \(rectangle.area)")

// Example 2: Computed Grade for Student
enum StudentGrade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

struct GradedStudent {
    var name: String
    var mark: Int

    var grade: StudentGrade {
        switch mark {
        case 75...100:
            return .a
        case 65..<75:
            return .b
        case 50..<65:
            return .c
        default:
            return .f
        }
    }
}

let gradedStudent = GradedStudent(name: "Amal", mark: 72)
print("Graded Student: \(gradedStudent.name)")
print("Computed Grade: \(gradedStudent.grade.rawValue)")
print()

// --------------------------------------------------
// Section 16: Methods & mutating Methods
// --------------------------------------------------
print("--- Section 16: Methods in Structures ---")

struct DetailedStudent {
    var name: String
    var mark: Int

    func displayDetails() {
        print("\(name) received \(mark)")
    }
}

let detailedStudent = DetailedStudent(name: "Kamal", mark: 75)
detailedStudent.displayDetails()

// Mutating Methods
print("\n--- Mutating Methods ---")
struct Counter {
    var count = 0

    mutating func increment() {
        count += 1
    }
}

var counter = Counter()
counter.increment()
counter.increment()
print("Counter after 2 increments: \(counter.count)")
print()

// --------------------------------------------------
// Section 17: Classes
// --------------------------------------------------
print("--- Section 17: Classes & Initializers ---")

class Lecturer {
    var name: String
    var module: String

    init(name: String, module: String) {
        self.name = name
        self.module = module
    }

    func introduce() {
        print("\(name) teaches \(module)")
    }
}

let lecturer = Lecturer(name: "Nushkan", module: "SE4041")
lecturer.introduce()
print()

// --------------------------------------------------
// Section 18: Struct vs Class (Value vs Reference Types)
// --------------------------------------------------
print("--- Section 18: Struct vs Class (Value vs Reference) ---")

// Struct Example (Value Type: copies values)
print("1. Struct Example (Value Type):")
struct Point {
    var x = 0
}

var firstPoint = Point()
var secondPoint = firstPoint // Creates an independent copy

secondPoint.x = 99

print("firstPoint.x:  \(firstPoint.x) (remains unchanged)")
print("secondPoint.x: \(secondPoint.x) (independent modified copy)")

// Class Example (Reference Type: shares instances)
print("\n2. Class Example (Reference Type):")
class CounterClass {
    var count = 0
}

let firstCounter = CounterClass()
let secondCounter = firstCounter // Shares the same reference

secondCounter.count = 99

print("firstCounter.count:  \(firstCounter.count) (reflects shared mutation)")
print("secondCounter.count: \(secondCounter.count) (shared reference)")
print()

// --------------------------------------------------
// Section 19: Choosing Between Struct and Class Summary
// --------------------------------------------------
print("--- Section 19: Architecture Guidelines ---")
print("""
| Requirement                     | Preferred Type |
| ------------------------------- | -------------- |
| Model simple data               | struct         |
| Independent copies required     | struct         |
| Shared instance required        | class          |
| Inheritance required            | class          |
| Default/Unsure which to use     | struct         |
""")
