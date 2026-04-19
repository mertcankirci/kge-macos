// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public protocol PersistenceInterface {
    associatedtype Failure: Error
    
    func read<T>(for key: String) throws(Failure) -> T?
    func write<T>(_ value: T, key: String)
}

public struct UserDefauktsManager: PersistenceInterface {
    let userDefaults = UserDefaults.standard
    
    public func read<T>(for key: String) throws -> T? {
        do {
            guard let value = userDefaults.object(forKey: key) as? T else { throw PersistenceError.typeMismatch }
            return value
        } catch {
            throw error
        }
    }
    
    public func write<T>(_ value: T, key: String) {
        userDefaults.set(value, forKey: key)
    }
}

private extension UserDefauktsManager {
    enum PersistenceError: LocalizedError {
        case typeMismatch
        
        var errorDescription: String? {
            switch self {
            case .typeMismatch:
                "Type mismatch"
            }
        }
    }
}
