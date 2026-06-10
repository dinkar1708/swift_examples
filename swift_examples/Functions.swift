//
//  Functions.swift
//  swift_examples
//
//  Functions Examples
//

import Foundation

func functionsExamples() {
    print("\n=== Functions ===\n")

    // Simple function
    func greet() {
        print("Hello!")
    }
    greet()

    // Function with parameters
    func greetPerson(name: String) {
        print("Hello, \(name)!")
    }
    greetPerson(name: "Alice")

    // Function with return value
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
    let sum = add(a: 5, b: 3)
    print("Sum: \(sum)")

    // Function with multiple return values (tuple)
    func minMax(numbers: [Int]) -> (min: Int, max: Int)? {
        guard !numbers.isEmpty else { return nil }
        var currentMin = numbers[0]
        var currentMax = numbers[0]
        for number in numbers {
            if number < currentMin {
                currentMin = number
            }
            if number > currentMax {
                currentMax = number
            }
        }
        return (currentMin, currentMax)
    }

    if let result = minMax(numbers: [3, 1, 9, 4, 7]) {
        print("Min: \(result.min), Max: \(result.max)")
    }

    // Function with default parameter values
    func greetWithTitle(name: String, title: String = "Mr.") {
        print("Hello, \(title) \(name)")
    }
    greetWithTitle(name: "Smith")
    greetWithTitle(name: "Jones", title: "Dr.")

    // Variadic parameters
    func average(numbers: Double...) -> Double {
        var total = 0.0
        for number in numbers {
            total += number
        }
        return total / Double(numbers.count)
    }
    print("Average: \(average(numbers: 1.0, 2.0, 3.0, 4.0, 5.0))")

    // In-out parameters
    func swapValues(a: inout Int, b: inout Int) {
        let temp = a
        a = b
        b = temp
    }
    var x = 5
    var y = 10
    print("Before swap: x = \(x), y = \(y)")
    swapValues(a: &x, b: &y)
    print("After swap: x = \(x), y = \(y)")

    // Function types
    let mathFunction: (Int, Int) -> Int = add
    print("Using function type: \(mathFunction(4, 5))")

    // Nested functions
    func calculateResult(operation: String, a: Int, b: Int) -> Int {
        func add() -> Int { return a + b }
        func subtract() -> Int { return a - b }

        switch operation {
        case "add":
            return add()
        case "subtract":
            return subtract()
        default:
            return 0
        }
    }
    print("Nested function result: \(calculateResult(operation: "add", a: 10, b: 5))")
}
