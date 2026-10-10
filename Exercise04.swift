//
//  Exercise04.swift
//  SE4041 - Practical 03: Closures, map, filter, and reduce
//  Student ID: IT22136374
//

import Foundation

print("==================================================")
print("SE4041 Practical 03 - Exercise 04: Closures")
print("==================================================\n")

// --------------------------------------------------
// Section 11: Closures with filter, map, and reduce
// --------------------------------------------------
let marks = [72, 45, 65, 48, 90]
print("Initial marks: \(marks)\n")

// filter: selects elements satisfying a condition
print("--- filter ---")
let passed = marks.filter { $0 >= 50 }
print("Passed marks (>= 50): \(passed)")
print()

// map: transforms each element
print("--- map ---")
let increasedMarks = marks.map { $0 + 5 }
print("Increased marks (+ 5): \(increasedMarks)")
print()

// reduce: combines all elements into a single value
print("--- reduce ---")
let total = marks.reduce(0) { $0 + $1 }
print("Total of marks: \(total)")
print()

// --------------------------------------------------
// Activity 5: Higher-Order Functions with Prices
// --------------------------------------------------
print("--------------------------------------------------")
print("Activity 5: Higher-Order Functions without Loops")
print("--------------------------------------------------")

let prices = [120.0, 250.0, 80.0, 500.0, 150.0]
print("Original prices: \(prices)\n")

// 1. Create an array containing only prices greater than 100
let pricesOver100 = prices.filter { $0 > 100 }
print("1. Prices greater than 100:")
print(pricesOver100)
print()

// 2. Create a new array where every price has increased by 10
let pricesIncreasedBy10 = prices.map { $0 + 10 }
print("2. Prices increased by 10:")
print(pricesIncreasedBy10)
print()

// 3. Calculate the total of all prices
let totalPrices = prices.reduce(0) { $0 + $1 }
print("3. Total of all prices:")
print(totalPrices)
