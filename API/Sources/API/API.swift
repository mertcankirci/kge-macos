// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public protocol APIInterface {
    static func get<T: Codable>(from request: URLRequest) async throws -> T
    static func post<T: Codable>(for request: URLRequest) async throws -> T
}

public struct API: APIInterface {
    private static let decoder = JSONDecoder()
    
    public static func get<T>(from request: URLRequest) async throws -> T where T : Decodable, T : Encodable {
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            try checkResponse(response)
            let result = try decoder.decode(T.self, from: data)
            
            return result
        } catch {
            throw error
        }
    }
    
    public static func post<T>(for request: URLRequest) async throws -> T where T : Decodable, T : Encodable {
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
    enum APIError: LocalizedError {
        case noData
        case invalidResponse
        case invalidStatusCode(Int)
        
        var errorDescription: String? {
            switch self {
            case .noData:
                "No data"
            case .invalidResponse:
                "Invalid response"
            case .invalidStatusCode(let code):
                "Invalid response status code :\(code)"
            }
        }
    }
    
    static func checkResponse(_ response: URLResponse) throws {
        guard let httpResponse = response as? HTTPURLResponse else  {
            throw APIError.invalidResponse
        }
        
        guard httpResponse.statusCode == 200 else {
            throw APIError.invalidStatusCode(httpResponse.statusCode)
        }
    }
}
