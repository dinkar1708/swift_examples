//
//  Optionals.swift
//  swift_examples
//
//  Optionals Examples
//

import Foundation

func optionalsExamples() {
    print("\n=== Optionals ===\n")

    // Optional declaration
    var optionalString: String? = "Hello"
    print("Optional string: \(optionalString ?? "nil")")

    // nil value
    var nilValue: String? = nil
    print("Nil value: \(nilValue ?? "This is nil")")

    // Forced unwrapping (use carefully!)
    if optionalString != nil {
        print("Forced unwrap: \(optionalString!)")
    }

    // Optional binding (if let)
    if let actualString = optionalString {
        print("Optional binding: \(actualString)")
    } else {
        print("optionalString is nil")
    }

    // Optional binding with guard
    func greet(name: String?) {
        guard let validName = name else {
            print("No name provided")
            return
        }
        print("Hello, \(validName)!")
    }

    greet(name: "Alice")
    greet(name: nil)

    // Nil coalescing operator
    let defaultName = "Guest"
    let userName: String? = nil
    let displayName = userName ?? defaultName
    print("Display name: \(displayName)")

    // Optional chaining
    struct Person {
        var residence: Residence?
    }

    struct Residence {
        var address: String?
    }

    let person = Person(residence: Residence(address: "123 Swift Street"))
    if let address = person.residence?.address {
        print("Address: \(address)")
    }

    // Implicitly unwrapped optionals
    let assumedString: String! = "Implicitly unwrapped"
    print("Implicitly unwrapped: \(assumedString)")
}
