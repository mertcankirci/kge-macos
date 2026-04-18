// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public protocol APIInterface {
    func get<T: Codable>(from request: URLRequest) async throws -> T
    func post<T: Codable>(for request: URLRequest) async throws -> T
}

public struct API: APIInterface {
    private let decoder = JSONDecoder()
    
    public func get<T>(from request: URLRequest) async throws -> T where T : Decodable, T : Encodable {
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            try checkResponse(response)
            let result = try decoder.decode(T.self, from: data)
            
            return result
        } catch {
            throw error
        }
    }
    
    public func post<T>(for request: URLRequest) async throws -> T where T : Decodable, T : Encodable {
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            try checkResponse(response)
            let result = try decoder.decode(T.self, from: data)
            
            return result
        } catch {
            throw error
        }
    }
}


private extension API {
    enum APIError: Error {
        case noData
        case invalidResponse
        case invalidStatusCode(Int)
    }
    
    func checkResponse(_ response: URLResponse) throws {
        guard let httpResponse = response as? HTTPURLResponse else  {
            throw APIError.invalidResponse
        }
        
        guard httpResponse.statusCode == 200 else {
            throw APIError.invalidStatusCode(httpResponse.statusCode)
        }
    }
}
