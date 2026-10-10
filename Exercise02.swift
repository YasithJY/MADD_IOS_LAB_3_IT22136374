//
//  Exercise02.swift
//  SE4041 - Practical 03: guard
//  Student ID: IT22136374
//

import Foundation

print("==================================================")
print("SE4041 Practical 03 - Exercise 02: Swift guard")
print("==================================================\n")

// --------------------------------------------------
// Section 9: guard Statement Example
// --------------------------------------------------
print("--- Section 9: register function with guard ---")

func register(_ name: String?) {
    guard let name = name else {
        print("No name given")
        return
    }

    guard !name.isEmpty else {
        print("Name cannot be empty")
        return
    }

    print("Registered \(name)")
}

print("Testing register(nil):")
register(nil)

print("\nTesting register(\"\"): ")
register("")

print("\nTesting register(\"Kamal\"):")
register("Kamal")

print("\n--------------------------------------------------")
print("Activity 3: checkStudent with guard let")
print("--------------------------------------------------")

// --------------------------------------------------
// Activity 3: checkStudent
// Requirements:
// - if name is nil, print "Student name unavailable" and return
// - if mark is nil, print "Student mark unavailable" and return
// - otherwise print: "\(name) received \(mark) marks"
// --------------------------------------------------

func checkStudent(name: String?, mark: Int?) {
    guard let studentName = name else {
        print("Student name unavailable")
        return
    }

    guard let studentMark = mark else {
        print("Student mark unavailable")
        return
    }

    print("\(studentName) received \(studentMark) marks")
}

print("Test Case 1 (name: nil, mark: 75):")
checkStudent(name: nil, mark: 75)

print("\nTest Case 2 (name: \"Kamal\", mark: nil):")
checkStudent(name: "Kamal", mark: nil)

print("\nTest Case 3 (name: \"Kamal\", mark: 75):")
checkStudent(name: "Kamal", mark: 75)
