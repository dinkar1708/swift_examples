//
//  Protocols.swift
//  swift_examples
//
//  Protocols Examples
//

import Foundation

func protocolsExamples() {
    print("\n=== Protocols ===\n")

    // MARK: - Basic Protocol
    protocol Drawable {
        var name: String { get }
        func draw()
    }

    struct Circle: Drawable {
        var name: String
        var radius: Double

        func draw() {
            print("Drawing circle '\(name)' with radius \(radius)")
        }
    }

    struct Rectangle: Drawable {
        var name: String
        var width: Double
        var height: Double

        func draw() {
            print("Drawing rectangle '\(name)' with width \(width) and height \(height)")
        }
    }

    let circle = Circle(name: "MyCircle", radius: 5.0)
    let rectangle = Rectangle(name: "MyRect", width: 10, height: 5)

    circle.draw()
    rectangle.draw()

    // MARK: - Protocol with Methods
    protocol Nameable {
        var fullName: String { get }
        func introduce()
    }

    class Person: Nameable {
        var firstName: String
        var lastName: String

        var fullName: String {
            return "\(firstName) \(lastName)"
        }

        init(firstName: String, lastName: String) {
            self.firstName = firstName
            self.lastName = lastName
        }

        func introduce() {
            print("Hi, I'm \(fullName)")
        }
    }

    let person = Person(firstName: "John", lastName: "Doe")
    person.introduce()

    // MARK: - Protocol Inheritance
    protocol Vehicle {
        var numberOfWheels: Int { get }
    }

    protocol Motorized: Vehicle {
        var engineType: String { get }
        func startEngine()
    }

    class Car: Motorized {
        var numberOfWheels: Int = 4
        var engineType: String = "V6"

        func startEngine() {
            print("Car engine started: \(engineType)")
        }
    }

    let car = Car()
    car.startEngine()
    print("Wheels: \(car.numberOfWheels)")

    // MARK: - Protocol Extensions
    protocol Identifiable {
        var id: String { get }
    }

    extension Identifiable {
        func displayID() {
            print("ID: \(id)")
        }
    }

    struct User: Identifiable {
        var id: String
        var name: String
    }

    let user = User(id: "user123", name: "Alice")
    user.displayID()

    // MARK: - Protocol Composition
    protocol Named {
        var name: String { get }
    }

    protocol Aged {
        var age: Int { get }
    }

    struct Employee: Named, Aged {
        var name: String
        var age: Int
    }

    func wishHappyBirthday(to celebrator: Named & Aged) {
        print("Happy birthday, \(celebrator.name)! You're \(celebrator.age) years old!")
    }

    let employee = Employee(name: "Bob", age: 30)
    wishHappyBirthday(to: employee)
}
