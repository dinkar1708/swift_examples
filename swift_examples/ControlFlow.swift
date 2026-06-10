//
//  ControlFlow.swift
//  swift_examples
//
//  Control Flow Examples (if, switch, loops)
//

import Foundation

func controlFlowExamples() {
    print("\n=== Control Flow ===\n")

    // If statement
    let temperature = 72
    if temperature < 32 {
        print("It's freezing!")
    } else if temperature < 70 {
        print("It's cool")
    } else {
        print("It's warm")
    }

    // Switch statement
    let dayOfWeek = 3
    switch dayOfWeek {
    case 1:
        print("Monday")
    case 2:
        print("Tuesday")
    case 3:
        print("Wednesday")
    case 4:
        print("Thursday")
    case 5:
        print("Friday")
    case 6, 7:
        print("Weekend!")
    default:
        print("Invalid day")
    }

    // Switch with ranges
    let score = 85
    switch score {
    case 0..<60:
        print("Grade: F")
    case 60..<70:
        print("Grade: D")
    case 70..<80:
        print("Grade: C")
    case 80..<90:
        print("Grade: B")
    case 90...100:
        print("Grade: A")
    default:
        print("Invalid score")
    }

    // For loop
    print("\nFor loop:")
    for i in 1...5 {
        print("Count: \(i)")
    }

    // For loop with stride
    print("\nStride:")
    for i in stride(from: 0, to: 10, by: 2) {
        print(i, terminator: " ")
    }
    print()

    // While loop
    print("\nWhile loop:")
    var counter = 0
    while counter < 3 {
        print("Counter: \(counter)")
        counter += 1
    }

    // Repeat-while loop
    print("\nRepeat-while loop:")
    var number = 0
    repeat {
        print("Number: \(number)")
        number += 1
    } while number < 3

    // For-in with array
    let fruits = ["Apple", "Banana", "Orange"]
    print("\nFruits:")
    for fruit in fruits {
        print(fruit)
    }

    // For-in with dictionary
    let scores = ["Alice": 95, "Bob": 87, "Charlie": 92]
    print("\nScores:")
    for (name, score) in scores {
        print("\(name): \(score)")
    }

    // Continue and break
    print("\nContinue example:")
    for i in 1...5 {
        if i == 3 {
            continue
        }
        print(i, terminator: " ")
    }
    print()

    print("\nBreak example:")
    for i in 1...5 {
        if i == 3 {
            break
        }
        print(i, terminator: " ")
    }
    print()
}
