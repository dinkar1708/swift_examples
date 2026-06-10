//
//  Extensions.swift
//  swift_examples
//
//  Extensions Examples
//

import Foundation

// MARK: - Extending Built-in Types
extension Int {
    var squared: Int {
        return self * self
    }

    var cubed: Int {
        return self * self * self
    }

    func times(_ action: () -> Void) {
        for _ in 0..<self {
            action()
        }
    }

    init(fromString string: String) {
        self = Int(string) ?? 0
    }
}

// MARK: - Extending String
extension String {
    var length: Int {
        return self.count
    }

    func reversedString() -> String {
        return String(self.reversed())
    }

    var isValidEmail: Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return predicate.evaluate(with: self)
    }

    subscript(index: Int) -> Character? {
        guard index >= 0 && index < self.count else {
            return nil
        }
        return self[self.index(self.startIndex, offsetBy: index)]
    }
}

// MARK: - Extending Double
extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

// MARK: - Extending Custom Types
struct Point {
    var x: Double
    var y: Double
}

extension Point {
    init(x: Int, y: Int) {
        self.x = Double(x)
        self.y = Double(y)
    }

    func distanceTo(_ other: Point) -> Double {
        let dx = self.x - other.x
        let dy = self.y - other.y
        return (dx * dx + dy * dy).squareRoot()
    }

    var description: String {
        return "Point(\(x), \(y))"
    }
}

extension Point: Equatable {
    static func == (lhs: Point, rhs: Point) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

// MARK: - Extending Protocols
protocol Describable {
    var description: String { get }
}

extension Describable {
    func printDescription() {
        print("Description: \(description)")
    }
}

struct Book: Describable {
    var title: String
    var author: String

    var description: String {
        return "\(title) by \(author)"
    }
}

// MARK: - Conditional Extensions
extension Array where Element == Int {
    func sumAll() -> Int {
        return self.reduce(0, +)
    }

    var evens: [Int] {
        return self.filter { $0 % 2 == 0 }
    }
}

// MARK: - Example Function
func extensionsExamples() {
    print("\n=== Extensions ===\n")

    // Using Int extensions
    print("5 squared: \(5.squared)")
    print("3 cubed: \(3.cubed)")

    print("Repeat 3 times:")
    3.times {
        print("Hello!", terminator: " ")
    }
    print()

    // Using String extensions
    let message = "Swift"
    print("\n'\(message)' length: \(message.length)")
    print("Reversed: \(message.reversedString())")
    print("Is 'test@example.com' valid email: \("test@example.com".isValidEmail)")

    // Using Double extensions
    let distance = 5.km + 300.m + 50.cm
    print("\nTotal distance: \(distance) meters")

    // Using custom initializer
    let number = Int(fromString: "42")
    print("Number from string: \(number)")

    // Using Point extensions
    let point1 = Point(x: 3, y: 4)
    let point2 = Point(x: 0, y: 0)
    print("\n\(point1.description)")
    print("Distance between points: \(point1.distanceTo(point2))")

    // Using protocol extension
    let book = Book(title: "Swift Programming", author: "Apple")
    book.printDescription()

    // Using conditional extensions
    let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    print("\nSum of numbers: \(numbers.sumAll())")
    print("Even numbers: \(numbers.evens)")

    // Using Equatable conformance
    let p1 = Point(x: 1.0, y: 2.0)
    let p2 = Point(x: 1.0, y: 2.0)
    let p3 = Point(x: 3.0, y: 4.0)

    print("\np1 == p2: \(p1 == p2)")
    print("p1 == p3: \(p1 == p3)")

    // Using subscript extension
    let word = "Swift"
    if let firstChar = word[0] {
        print("\nFirst character of '\(word)': \(firstChar)")
    }
}
