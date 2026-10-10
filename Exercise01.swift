//
//  Exercise01.swift
//  SE4041 - Practical 03: Functions
//  Student ID: IT22136374
//

import Foundation

print("==================================================")
print("SE4041 Practical 03 - Exercise 01: Swift Functions")
print("==================================================\n")

// --------------------------------------------------
// Step 1: A Simple Function
// --------------------------------------------------
print("--- Step 1: Simple Function ---")
func greet() {
    print("Welcome to SE4041")
}

greet()
print()

// --------------------------------------------------
// Step 2: Function with a Parameter
// --------------------------------------------------
print("--- Step 2: Function with a Parameter ---")
func greetStudent(name: String) {
    print("Welcome \(name)")
}

greetStudent(name: "Amal")
greetStudent(name: "Nimali")
greetStudent(name: "Ruwan")
print()

// --------------------------------------------------
// Section 6: Returning a Value
// --------------------------------------------------
print("--- Section 6: Returning a Value ---")
func grade(for mark: Int) -> String {
    if mark >= 50 {
        return "Pass"
    }
    return "Fail"
}

let result = grade(for: 68)
print("Result for mark 68: \(result)")
print()

// --------------------------------------------------
// Activity 1: calculateAverage Function
// --------------------------------------------------
print("--- Activity 1: calculateAverage ---")
func calculateAverage(_ num1: Double, _ num2: Double, _ num3: Double) -> Double {
    return (num1 + num2 + num3) / 3.0
}

let averageResult = calculateAverage(75, 82, 68)
print("Average of 75, 82, 68: \(averageResult)")
print()

// --------------------------------------------------
// Section 7: Argument Labels
// --------------------------------------------------
print("--- Section 7: Argument Labels ---")
func travel(from town: String, to city: String) {
    print("Travelling from \(town) to \(city)")
}

travel(from: "Malabe", to: "Kandy")

// Removing an Argument Label
func double(_ number: Int) -> Int {
    return number * 2
}

print("Double of 10: \(double(10))")
print()

// --------------------------------------------------
// Section 8: Default Parameter Values
// --------------------------------------------------
print("--- Section 8: Default Parameter Values ---")
func result(_ mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}

print("Result (68, default passMark=50): \(result(68))")
print("Result (68, custom passMark=75): \(result(68, passMark: 75))")
print()

// --------------------------------------------------
// Activity 2: finalResult with Default Parameter
// --------------------------------------------------
print("--- Activity 2: finalResult with Default Parameter ---")
func finalResult(mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}

print("finalResult(mark: 45) -> \(finalResult(mark: 45))")
print("finalResult(mark: 75) -> \(finalResult(mark: 75))")
print("finalResult(mark: 75, passMark: 80) -> \(finalResult(mark: 75, passMark: 80))")
