//
//  VariablesAndConstants.swift
//  swift_examples
//
//  Variables and Constants Examples
//

import Foundation

func variablesAndConstantsExamples() {
    print("\n=== Variables and Constants ===\n")

    // Constants (cannot be changed)
    let maximumLoginAttempts = 3
    print("Maximum login attempts: \(maximumLoginAttempts)")

    // Variables (can be changed)
    var currentLoginAttempt = 0
    currentLoginAttempt = 1
    print("Current login attempt: \(currentLoginAttempt)")

    // Type annotation
    var welcomeMessage: String
    welcomeMessage = "Hello, Swift!"
    print(welcomeMessage)

    // Multiple variables on one line
    var x = 0.0, y = 0.0, z = 0.0
    x = 1.0
    y = 2.0
    z = 3.0
    print("Coordinates: (\(x), \(y), \(z))")

    // Type inference
    let pi = 3.14159  // Double
    let meaningOfLife = 42  // Int
    let isSwiftAwesome = true  // Bool
    print("Pi: \(pi), Meaning of life: \(meaningOfLife), Swift is awesome: \(isSwiftAwesome)")

    // String interpolation
    let name = "John"
    let age = 25
    print("My name is \(name) and I am \(age) years old")
}
