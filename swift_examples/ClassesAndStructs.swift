//
//  ClassesAndStructs.swift
//  swift_examples
//
//  Classes and Structs Examples
//

import Foundation

func classesAndStructsExamples() {
    print("\n=== Classes and Structs ===\n")

    // MARK: - Struct Example
    struct Point {
        var x: Double
        var y: Double

        // Computed property
        var description: String {
            return "Point at (\(x), \(y))"
        }

        // Method
        func distanceFromOrigin() -> Double {
            return (x * x + y * y).squareRoot()
        }

        // Mutating method (for structs)
        mutating func moveBy(deltaX: Double, deltaY: Double) {
            x += deltaX
            y += deltaY
        }
    }

    var point = Point(x: 3.0, y: 4.0)
    print(point.description)
    print("Distance from origin: \(point.distanceFromOrigin())")
    point.moveBy(deltaX: 1.0, deltaY: 1.0)
    print("After move: \(point.description)")

    // Structs are value types (copied)
    var point2 = point
    point2.x = 10
    print("Original point: \(point.x), Copied point: \(point2.x)")

    // MARK: - Class Example
    class Vehicle {
        var speed: Double
        var name: String

        // Initializer
        init(name: String, speed: Double = 0.0) {
            self.name = name
            self.speed = speed
        }

        // Method
        func describe() {
            print("\(name) is moving at \(speed) mph")
        }

        // Deinitializer
        deinit {
            print("\(name) is being deinitialized")
        }
    }

    // Classes are reference types (shared)
    let car = Vehicle(name: "Tesla", speed: 60)
    car.describe()

    let sameCar = car
    sameCar.speed = 80
    print("Original car speed: \(car.speed)")  // Also 80!

    // MARK: - Inheritance
    class Bicycle: Vehicle {
        var hasBasket: Bool

        init(name: String, hasBasket: Bool) {
            self.hasBasket = hasBasket
            super.init(name: name, speed: 0.0)
        }

        override func describe() {
            super.describe()
            print("Has basket: \(hasBasket)")
        }
    }

    let bike = Bicycle(name: "Mountain Bike", hasBasket: true)
    bike.speed = 15
    bike.describe()

    // MARK: - Property Observers
    class Temperature {
        var celsius: Double {
            willSet {
                print("About to set temperature to \(newValue)°C")
            }
            didSet {
                print("Temperature changed from \(oldValue)°C to \(celsius)°C")
            }
        }

        init(celsius: Double) {
            self.celsius = celsius
        }
    }

    let temp = Temperature(celsius: 20)
    temp.celsius = 25

    // MARK: - Lazy Properties
    class DataManager {
        lazy var data: [String] = {
            print("Loading data...")
            return ["Item 1", "Item 2", "Item 3"]
        }()
    }

    let manager = DataManager()
    print("DataManager created")
    print("Accessing data: \(manager.data[0])")
}
