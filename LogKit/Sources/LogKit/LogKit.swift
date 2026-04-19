// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public enum KGELogger {
    case error
    case warning
    case success
    case debug
    case network
    
    var label: String {
        switch self {
        case .error:
            "[ERROR]"
        case .warning:
            "[WARNING]"
        case .success:
            "[SUCCESS]"
        case .debug:
            "[DEBUG]"
        case .network:
            "[NETWORK]"
        }
    }
    
    public static func log(
        debugLevel: Self = .debug,
        _ items: Any...,
        file: String = #file,
        function: String = #function,
        line: Int = #line,
        separator: String = " "
    ) {
        #if DEBUG
        let shortFileName = file.components(separatedBy: "/").last ?? "---"
        
        let output = items.map {
            if let itm = $0 as? CustomStringConvertible {
                return "\(itm.description)"
            } else {
                return "\($0)"
            }
        }
            .joined(separator: separator)
        
        print("")
        var msg = "\(debugLevel.label) \(shortFileName) - \(function) - line \(line)"
        if !output.isEmpty { msg += "\n\(output)" }
        print(msg)
        #endif
    }
}


