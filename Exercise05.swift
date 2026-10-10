//
//  Exercise05.swift
//  SE4041 - Practical 03: Enumerations
//  Student ID: IT22136374
//

import Foundation

print("==================================================")
print("SE4041 Practical 03 - Exercise 05: Swift Enumerations")
print("==================================================\n")

// --------------------------------------------------
// Section 12: Basic Enumeration
// --------------------------------------------------
print("--- Section 12: Basic Enum & Type Inference ---")
enum Direction {
    case north
    case south
    case east
    case west
}

var direction = Direction.north
print("Initial direction: \(direction)")

// Type inference allows shorthand dot syntax
direction = .south
print("Updated direction: \(direction)\n")

// --------------------------------------------------
// Enum with switch
// --------------------------------------------------
print("--- Enum with switch Statement ---")
enum Status {
    case registered
    case pending
    case rejected
}

let studentStatus = Status.registered

switch studentStatus {
case .registered:
    print("Registration Complete")
case .pending:
    print("Registration Pending")
case .rejected:
    print("Registration Rejected")
}
print()

// --------------------------------------------------
// Section 13: Raw Values
// --------------------------------------------------
print("--- Section 13: Enum with Raw Values ---")
enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

let grade = Grade.b
print("Grade enum case: \(grade)")
print("Grade raw value: \(grade.rawValue)")
print()

// --------------------------------------------------
// Activity 6: ModuleStatus Enum with Raw Values
// --------------------------------------------------
print("--------------------------------------------------")
print("Activity 6: ModuleStatus Enum with Raw Values")
print("--------------------------------------------------")

enum ModuleStatus: String {
    case notStarted = "Not Started"
    case inProgress = "In Progress"
    case completed = "Completed"
}

let currentModuleStatus = ModuleStatus.inProgress
print("Module Status Case: \(currentModuleStatus)")
print("Module Status Raw Value: \(currentModuleStatus.rawValue)")

// Additional demonstration of all cases
let statuses: [ModuleStatus] = [.notStarted, .inProgress, .completed]
print("\nDemonstrating all ModuleStatus cases:")
for status in statuses {
    print("- \(status) -> \"\(status.rawValue)\"")
}
