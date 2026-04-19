//
//  KGEEvent.swift
//  CalendarKit
//
//  Created by Mertcan Kırcı on 19.04.2026.
//

import Foundation
import EventKit

public struct KGEEvent: Identifiable {
    public let id = UUID()
    public let title: String
    public let startDate: Date
    public let endDate: Date
    public let recurrenceFrequency: EKRecurrenceFrequency?
    public let recurrenceInterval: Int?
    public let recurrenceEnd: EKRecurrenceEnd?
    
    public init(
        title: String,
        startDate: Date,
        endDate: Date,
        recurrenceFrequency: EKRecurrenceFrequency?,
        recurrenceInterval: Int?,
        recurrenceEnd: EKRecurrenceEnd?
    ) {
        self.title = title
        self.startDate = startDate
        self.endDate = endDate
        self.recurrenceFrequency = recurrenceFrequency
        self.recurrenceInterval = recurrenceInterval
        self.recurrenceEnd = recurrenceEnd
    }
    
    public init(_ event: EKEvent) {
        title = event.title.replacingOccurrences(of: "#KGE - ", with: "")
        startDate = event.startDate
        endDate = event.endDate
        
        let rule = event.recurrenceRules?.first
        
        self.recurrenceFrequency = rule?.frequency
        self.recurrenceInterval = rule?.interval
        self.recurrenceEnd = rule?.recurrenceEnd
    }
}

public extension KGEEvent {
    func toEKEvent() -> EKEvent {
        let eventStore = EKEventStore()
        var rule: EKRecurrenceRule?
        
        if let recurrenceFrequency,
           let recurrenceInterval {
            rule = .init(
                recurrenceWith: recurrenceFrequency,
                interval: recurrenceInterval,
                end: recurrenceEnd
            )
        }
        
        let event = EKEvent(eventStore: eventStore)
        event.title = "#KGE - \(title)"
        event.startDate = startDate
        event.calendar = eventStore.defaultCalendarForNewEvents
        
        if let rule {
            event.addRecurrenceRule(rule)
        }
        
        return event
    }
}

public extension EKEvent {
    func toKGEEvent() -> KGEEvent {
        KGEEvent(self)
    }
}
