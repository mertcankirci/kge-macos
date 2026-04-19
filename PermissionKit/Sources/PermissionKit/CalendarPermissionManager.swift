//
//  File.swift
//  PermissionKit
//
//  Created by Mertcan Kırcı on 19.04.2026.
//

import EventKit

public final class CalendarPermissionManager: PermissionInterface {
    private let eventStore = EKEventStore()
    
    var status: PermissionStatus {
        let eventStatus = EKEventStore.authorizationStatus(for: .event)
        
        switch eventStatus {
        case .fullAccess, .writeOnly, .authorized:
            return .authorized
        case .notDetermined:
            return .notDetermined
        case .restricted:
            return .restricted
        case .denied:
            return .denied
        @unknown default:
            return .denied
        }
    }
    
    @discardableResult
    func request() async throws -> PermissionStatus {
        guard status == .notDetermined else { return status }
        do {
            let granted = try await eventStore.requestFullAccessToEvents()
            return granted ? .authorized : .denied
        } catch {
            throw error
        }
    }
}
