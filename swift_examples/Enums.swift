//
//  Enums.swift
//  swift_examples
//
//  Enumerations Examples
//

import Foundation

func enumsExamples() {
    print("\n=== Enumerations ===\n")

    // MARK: - Basic Enum
    enum Direction {
        case north
        case south
        case east
        case west
    }

    var currentDirection = Direction.north
    print("Current direction: \(currentDirection)")

    currentDirection = .south
    print("Changed to: \(currentDirection)")

    // MARK: - Enum with Switch
    func move(direction: Direction) {
        switch direction {
        case .north:
            print("Moving north")
        case .south:
            print("Moving south")
        case .east:
            print("Moving east")
        case .west:
            print("Moving west")
        }
    }

    move(direction: .east)

    // MARK: - Enum with Raw Values
    enum Planet: Int {
        case mercury = 1
        case venus = 2
        case earth = 3
        case mars = 4
    }

    let earth = Planet.earth
    print("Earth's position: \(earth.rawValue)")

    if let planet = Planet(rawValue: 2) {
        print("Planet with raw value 2: \(planet)")
    }

    // MARK: - Enum with String Raw Values
    enum HTTPStatus: String {
        case ok = "200"
        case notFound = "404"
        case serverError = "500"
    }

    let status = HTTPStatus.ok
    print("HTTP Status: \(status.rawValue)")

    // MARK: - Enum with Associated Values
    enum Barcode {
        case upc(Int, Int, Int, Int)
        case qrCode(String)
    }

    var productBarcode = Barcode.upc(8, 85909, 51226, 3)
    print("Product barcode set to UPC")

    productBarcode = .qrCode("ABCDEFGHIJKLMNOP")
    print("Product barcode changed to QR code")

    switch productBarcode {
    case .upc(let numberSystem, let manufacturer, let product, let check):
        print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
    case .qrCode(let code):
        print("QR code: \(code)")
    }

    // MARK: - Enum with Methods
    enum TrafficLight {
        case red
        case yellow
        case green

        func action() -> String {
            switch self {
            case .red:
                return "Stop"
            case .yellow:
                return "Prepare to stop"
            case .green:
                return "Go"
            }
        }

        mutating func next() {
            switch self {
            case .red:
                self = .green
            case .yellow:
                self = .red
            case .green:
                self = .yellow
            }
        }
    }

    var light = TrafficLight.red
    print("Traffic light: \(light.action())")
    light.next()
    print("After next: \(light.action())")

    // MARK: - Recursive Enum
    enum ArithmeticExpression {
        case number(Int)
        indirect case addition(ArithmeticExpression, ArithmeticExpression)
        indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
    }

    let five = ArithmeticExpression.number(5)
    let four = ArithmeticExpression.number(4)
    let sum = ArithmeticExpression.addition(five, four)
    let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

    func evaluate(_ expression: ArithmeticExpression) -> Int {
        switch expression {
        case let .number(value):
            return value
        case let .addition(left, right):
            return evaluate(left) + evaluate(right)
        case let .multiplication(left, right):
            return evaluate(left) * evaluate(right)
        }
    }

    print("Result: (5 + 4) * 2 = \(evaluate(product))")
}
