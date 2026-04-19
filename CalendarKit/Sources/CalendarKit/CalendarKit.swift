// The Swift Programming Language
// https://docs.swift.org/swift-book

import EventKit

public protocol CalendarInterface {
    func createEvent(
        title: String,
        startDate: Date,
        endDate: Date,
        recurrenceFrequency: EKRecurrenceFrequency?,
        recurrenceInterval: Int?,
        recurrenceEnd: EKRecurrenceEnd?
    ) throws
    
    func deleteEvent(event: EKEvent) throws
}

public struct CalendarManager: CalendarInterface {
    private let eventStore = EKEventStore()
    
    public func createEvent(
        title: String,
        startDate: Date,
        endDate: Date,
        recurrenceFrequency: EKRecurrenceFrequency?,
        recurrenceInterval: Int?,
        recurrenceEnd: EKRecurrenceEnd?
    ) throws {
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
        event.title = title
        event.startDate = startDate
        event.calendar = eventStore.defaultCalendarForNewEvents
        
        if let rule {
            event.addRecurrenceRule(rule)
        }
        
        do {
            try eventStore.save(event, span: .futureEvents)
        } catch  {
            throw error
        }
    }
    
    public func deleteEvent(event: EKEvent) throws {
        do {
            try eventStore.remove(event, span: .futureEvents)
        } catch {
            throw error
        }
    }
}
