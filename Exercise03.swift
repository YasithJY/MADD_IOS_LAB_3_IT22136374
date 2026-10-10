//
//  Exercise03.swift
//  SE4041 - Practical 03: Tuples
//  Student ID: IT22136374
//

import Foundation

print("==================================================")
print("SE4041 Practical 03 - Exercise 03: Swift Tuples")
print("==================================================\n")

// --------------------------------------------------
// Section 10: Returning Multiple Values Using Tuples
// --------------------------------------------------
print("--- Section 10: summary(of:) Function with Tuples ---")

func summary(of marks: [Int]) -> (minimum: Int, maximum: Int, average: Double) {
    let total = marks.reduce(0, +)
    return (
        marks.min()!,
        marks.max()!,
        Double(total) / Double(marks.count)
    )
}

let result = summary(of: [72, 65, 48, 90])
print("Accessing by member names:")
print("Minimum mark: \(result.minimum)")
print("Maximum mark: \(result.maximum)")
print("Average mark: \(result.average)")
print()

// --------------------------------------------------
// Tuple Unpacking
// --------------------------------------------------
print("--- Tuple Unpacking ---")
let (low, high, average) = summary(of: [72, 65, 48, 90])
print("Unpacked low: \(low)")
print("Unpacked high: \(high)")
print("Unpacked average: \(average)")
print()

// Ignoring unused tuple values with wildcard `_`
print("Ignoring unused element using wildcard (_):")
let (lowestMark, highestMark, _) = summary(of: [72, 65, 48, 90])
print("Low: \(lowestMark), High: \(highestMark)")
print()

// --------------------------------------------------
// Activity 4: analyzeMarks
// --------------------------------------------------
print("--------------------------------------------------")
print("Activity 4: analyzeMarks Function")
print("--------------------------------------------------")

func analyzeMarks(_ marks: [Int]) -> (total: Int, average: Double) {
    let total = marks.reduce(0, +)
    let average = marks.isEmpty ? 0.0 : Double(total) / Double(marks.count)
    return (total: total, average: average)
}

let testMarks = [60, 70, 80, 90]
let analysis = analyzeMarks(testMarks)

print("Test Marks: \(testMarks)")
print("Total: \(analysis.total)")
print("Average: \(analysis.average)")
