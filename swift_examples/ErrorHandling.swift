//
//  ErrorHandling.swift
//  swift_examples
//
//  Error Handling Examples
//

import Foundation

func errorHandlingExamples() {
    print("\n=== Error Handling ===\n")

    // MARK: - Defining Errors
    enum NetworkError: Error {
        case badURL
        case timeout
        case noConnection
        case serverError(code: Int)
    }

    enum ValidationError: Error {
        case emptyField
        case invalidEmail
        case passwordTooShort
    }

    // MARK: - Throwing Functions
    func fetchData(from url: String) throws -> String {
        guard !url.isEmpty else {
            throw NetworkError.badURL
        }

        // Simulate network call
        if url == "timeout" {
            throw NetworkError.timeout
        }

        if url == "error500" {
            throw NetworkError.serverError(code: 500)
        }

        return "Data from \(url)"
    }

    // MARK: - Do-Catch
    print("--- Do-Catch ---")

    do {
        let data = try fetchData(from: "https://example.com")
        print("Success: \(data)")
    } catch NetworkError.badURL {
        print("Error: Bad URL")
    } catch NetworkError.timeout {
        print("Error: Request timeout")
    } catch NetworkError.serverError(let code) {
        print("Error: Server error with code \(code)")
    } catch {
        print("Error: \(error)")
    }

    // Try with timeout
    do {
        let data = try fetchData(from: "timeout")
        print("Success: \(data)")
    } catch {
        print("Caught error: \(error)")
    }

    // MARK: - Try?
    print("\n--- Try? (Optional Try) ---")

    let result1 = try? fetchData(from: "https://api.com")
    print("Result1: \(result1 ?? "nil")")

    let result2 = try? fetchData(from: "")
    print("Result2: \(result2 ?? "nil")")

    // MARK: - Try!
    print("\n--- Try! (Force Try) ---")
    // Use only when you're certain it won't throw
    let result3 = try! fetchData(from: "https://safe-url.com")
    print("Result3: \(result3)")

    // MARK: - Rethrowing Functions
    func processData(with handler: () throws -> String) rethrows -> String {
        let data = try handler()
        return "Processed: \(data)"
    }

    do {
        let processed = try processData {
            try fetchData(from: "https://example.com")
        }
        print("Processed data: \(processed)")
    } catch {
        print("Processing error: \(error)")
    }

    // MARK: - Defer
    print("\n--- Defer ---")

    func processFile() {
        print("Opening file")

        defer {
            print("Closing file (defer)")
        }

        print("Processing file")
        // File is closed automatically when function exits
    }

    processFile()

    // MARK: - Multiple Defers
    func multipleDeferExample() {
        print("\n--- Multiple Defers ---")
        print("Start")

        defer { print("Defer 1") }
        defer { print("Defer 2") }
        defer { print("Defer 3") }

        print("End")
        // Defers execute in reverse order
    }

    multipleDeferExample()

    // MARK: - Custom Error with LocalizedError
    enum FileError: LocalizedError {
        case fileNotFound
        case permissionDenied
        case diskFull

        var errorDescription: String? {
            switch self {
            case .fileNotFound:
                return "The file could not be found"
            case .permissionDenied:
                return "Permission denied to access the file"
            case .diskFull:
                return "Not enough disk space"
            }
        }
    }

    func readFile() throws {
        throw FileError.fileNotFound
    }

    do {
        try readFile()
    } catch let error as LocalizedError {
        print("Error: \(error.errorDescription ?? "Unknown error")")
    }

    // MARK: - Result Type
    print("\n--- Result Type ---")

    func divide(_ a: Int, by b: Int) -> Result<Int, NetworkError> {
        guard b != 0 else {
            return .failure(.serverError(code: 400))
        }
        return .success(a / b)
    }

    let divisionResult = divide(10, by: 2)
    switch divisionResult {
    case .success(let value):
        print("Division result: \(value)")
    case .failure(let error):
        print("Division error: \(error)")
    }

    // Result with get()
    do {
        let value = try divide(10, by: 0).get()
        print("Value: \(value)")
    } catch {
        print("Caught from Result: \(error)")
    }
}
