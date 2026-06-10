//
//  Collections.swift
//  swift_examples
//
//  Collections Examples (Arrays, Sets, Dictionaries)
//

import Foundation

func collectionsExamples() {
    print("\n=== Collections ===\n")

    // MARK: - Arrays
    print("--- Arrays ---")

    // Creating arrays
    var numbers = [1, 2, 3, 4, 5]
    var emptyArray: [String] = []
    var repeatingArray = Array(repeating: 0, count: 5)

    print("Numbers: \(numbers)")
    print("Repeating: \(repeatingArray)")

    // Accessing elements
    print("First element: \(numbers[0])")
    print("Last element: \(numbers[numbers.count - 1])")

    // Adding elements
    numbers.append(6)
    numbers += [7, 8]
    print("After adding: \(numbers)")

    // Inserting elements
    numbers.insert(0, at: 0)
    print("After insert: \(numbers)")

    // Removing elements
    numbers.remove(at: 0)
    let lastNumber = numbers.removeLast()
    print("Removed: \(lastNumber), Array: \(numbers)")

    // Array properties
    print("Count: \(numbers.count)")
    print("Is empty: \(numbers.isEmpty)")

    // Iterating
    print("Iterating:")
    for number in numbers {
        print(number, terminator: " ")
    }
    print()

    // Enumerated
    print("With indices:")
    for (index, value) in numbers.enumerated() {
        print("[\(index)]: \(value)", terminator: " ")
    }
    print()

    // Array methods
    let doubled = numbers.map { $0 * 2 }
    print("Doubled: \(doubled)")

    let evens = numbers.filter { $0 % 2 == 0 }
    print("Evens: \(evens)")

    let sum = numbers.reduce(0, +)
    print("Sum: \(sum)")

    // MARK: - Sets
    print("\n--- Sets ---")

    var fruits: Set<String> = ["Apple", "Banana", "Orange"]
    print("Fruits: \(fruits)")

    // Adding to set
    fruits.insert("Mango")
    print("After insert: \(fruits)")

    // Removing from set
    fruits.remove("Banana")
    print("After remove: \(fruits)")

    // Set operations
    let set1: Set = [1, 2, 3, 4, 5]
    let set2: Set = [4, 5, 6, 7, 8]

    print("Union: \(set1.union(set2).sorted())")
    print("Intersection: \(set1.intersection(set2).sorted())")
    print("Difference: \(set1.subtracting(set2).sorted())")
    print("Symmetric difference: \(set1.symmetricDifference(set2).sorted())")

    // Set membership
    print("Contains 3: \(set1.contains(3))")

    // MARK: - Dictionaries
    print("\n--- Dictionaries ---")

    var ages: [String: Int] = ["Alice": 25, "Bob": 30, "Charlie": 35]
    print("Ages: \(ages)")

    // Accessing values
    if let aliceAge = ages["Alice"] {
        print("Alice's age: \(aliceAge)")
    }

    // Adding/updating
    ages["David"] = 40
    ages["Alice"] = 26  // Update
    print("After updates: \(ages)")

    // Removing
    ages["Bob"] = nil
    ages.removeValue(forKey: "Charlie")
    print("After removes: \(ages)")

    // Dictionary properties
    print("Count: \(ages.count)")
    print("Keys: \(ages.keys)")
    print("Values: \(ages.values)")

    // Iterating
    for (name, age) in ages {
        print("\(name) is \(age) years old")
    }

    // Dictionary with default value
    let scores = ["Alice": 95, "Bob": 87]
    let charlieScore = scores["Charlie", default: 0]
    print("Charlie's score: \(charlieScore)")

    // MARK: - Higher-order functions
    print("\n--- Higher-order functions ---")

    let numbers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    // Map
    let squares = numbers2.map { $0 * $0 }
    print("Squares: \(squares)")

    // Filter
    let oddNumbers = numbers2.filter { $0 % 2 != 0 }
    print("Odd numbers: \(oddNumbers)")

    // Reduce
    let product = numbers2.reduce(1, *)
    print("Product: \(product)")

    // CompactMap (removes nil)
    let strings = ["1", "2", "three", "4", "five"]
    let validNumbers = strings.compactMap { Int($0) }
    print("Valid numbers: \(validNumbers)")

    // FlatMap
    let nestedArray = [[1, 2, 3], [4, 5], [6, 7, 8]]
    let flattened = nestedArray.flatMap { $0 }
    print("Flattened: \(flattened)")

    // Sorted
    let unsorted = [5, 2, 9, 1, 7]
    print("Sorted: \(unsorted.sorted())")
    print("Sorted descending: \(unsorted.sorted(by: >))")
}
