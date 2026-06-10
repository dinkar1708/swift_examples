# Swift Examples

A comprehensive collection of Swift programming examples covering fundamental to advanced topics. Perfect for learning Swift or as a quick reference guide.

## 📚 What You'll Learn

This project contains **12 complete examples** covering:

1. **Variables and Constants** - Learn about variable declaration, type inference, and string interpolation
2. **Optionals** - Master optional handling, unwrapping, guard statements, and nil coalescing
3. **Control Flow** - If/else, switch statements, for/while loops, ranges, continue/break
4. **Functions** - Parameters, return values, default values, variadic parameters, in-out parameters
5. **Closures** - Closure syntax, trailing closures, shorthand argument names
6. **Classes and Structs** - Value vs reference types, inheritance, property observers, lazy properties
7. **Protocols** - Protocol definition, inheritance, extensions, protocol composition
8. **Enumerations** - Basic enums, raw values, associated values, methods, recursive enums
9. **Collections** - Arrays, Sets, Dictionaries, and higher-order functions (map, filter, reduce)
10. **Error Handling** - Try/catch, throwing functions, defer statements, Result type
11. **Extensions** - Extending built-in types, computed properties, conditional extensions
12. **Playground** - Interactive Closures playground

## 🚀 How to Run

### Option 1: Using Xcode (Recommended)

1. **Open the project:**
   ```bash
   open swift_examples.xcodeproj
   ```

2. **In Xcode:**
   - Select the `swift_examples` scheme from the dropdown (top left)
   - Press **Cmd+R** or click the ▶️ Run button
   - View output in the Debug Console at the bottom (press **Cmd+Shift+Y** to show/hide)

### Option 2: Using Command Line

1. **Build the project:**
   ```bash
   xcodebuild -project swift_examples.xcodeproj -scheme swift_examples -configuration Debug build
   ```

2. **Run the executable:**
   ```bash
   ./build/Debug/swift_examples
   ```

   Or use the DerivedData path:
   ```bash
   ~/Library/Developer/Xcode/DerivedData/swift_examples-*/Build/Products/Debug/swift_examples
   ```

### Option 3: Run with Swift directly

Run the main file directly:
```bash
swift swift_examples/main.swift
```

**Note:** This will only work if you comment out function calls in main.swift, since Swift compiler won't see other files.

## 📂 Project Structure

```
swift_examples/
├── swift_examples.xcodeproj     # Xcode project file
├── swift_examples.xcworkspace   # Xcode workspace
├── swift_examples/              # Source files
│   ├── main.swift              # Entry point - runs all examples
│   ├── VariablesAndConstants.swift
│   ├── Optionals.swift
│   ├── ControlFlow.swift
│   ├── Functions.swift
│   ├── ClassesAndStructs.swift
│   ├── Protocols.swift
│   ├── Enums.swift
│   ├── Collections.swift
│   ├── ErrorHandling.swift
│   └── Extensions.swift
├── Closures.playground/         # Interactive playground
└── README.md                    # This file
```

## 📖 Example Topics Overview

### Variables and Constants
- Variable and constant declaration
- Type annotation and inference
- String interpolation
- Multiple variable declarations

### Optionals
- Optional declaration and nil handling
- Optional binding (if let, guard let)
- Forced unwrapping
- Nil coalescing operator
- Optional chaining
- Implicitly unwrapped optionals

### Control Flow
- If/else statements
- Switch statements with pattern matching
- For-in loops and ranges
- While and repeat-while loops
- Continue and break statements
- Stride for custom increments

### Functions
- Function declaration and parameters
- Return values and tuples
- Default parameter values
- Variadic parameters
- In-out parameters
- Function types and nested functions

### Closures
- Closure syntax and expressions
- Trailing closures
- Shorthand argument names ($0, $1)
- Capturing values

### Classes and Structs
- Structs (value types) vs Classes (reference types)
- Properties and methods
- Initializers and deinitializers
- Inheritance and method overriding
- Property observers (willSet, didSet)
- Lazy properties and computed properties

### Protocols
- Protocol definition and conformance
- Protocol inheritance
- Protocol extensions with default implementations
- Protocol composition

### Enumerations
- Basic enumerations
- Raw values (Int, String)
- Associated values
- Enum methods
- Recursive enumerations

### Collections
- Arrays: creation, access, modification
- Sets: unique elements, set operations
- Dictionaries: key-value pairs
- Higher-order functions: map, filter, reduce, compactMap, flatMap

### Error Handling
- Defining custom errors
- Throwing and catching errors
- Try, try?, and try!
- Defer statements
- Result type

### Extensions
- Extending built-in types (Int, String, Double)
- Adding computed properties
- Adding methods
- Conditional extensions
- Protocol conformance via extensions

## 🎯 Expected Output

When you run the project, you'll see output for all examples organized by topic:

```
===========================================
     Swift Examples - All Topics
===========================================

=== Variables and Constants ===
Maximum login attempts: 3
Current login attempt: 1
...

=== Optionals ===
Optional string: Hello
Nil value: This is nil
...

[... all other examples ...]

===========================================
     All Examples Completed!
===========================================
```

## 🛠 Requirements

- macOS 10.15 or later
- Xcode 11.6 or later
- Swift 5.0 or later

## 📝 License

MIT License - See LICENSE file for details

## 👤 Author

Created by Dinakar Prasad Maurya

---

**Happy Learning! 🎉**

Feel free to explore, modify, and experiment with the code examples to deepen your understanding of Swift.
