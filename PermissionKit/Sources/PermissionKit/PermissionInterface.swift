// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

protocol PermissionInterface {
    var status: PermissionStatus { get }
    @discardableResult
    func request() async throws -> PermissionStatus
}

