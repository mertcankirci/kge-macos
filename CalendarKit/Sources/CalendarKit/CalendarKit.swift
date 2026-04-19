// The Swift Programming Language
// https://docs.swift.org/swift-book

import EventKit
import Extensions

public protocol CalendarInterface {
    func createEvent(_ event: KGEEvent) throws
    
    func deleteEvent(_ event: KGEEvent) throws
    
    func fetchEvents() -> [KGEEvent]
}

public struct CalendarManager: CalendarInterface {
    private let eventStore = EKEventStore()
    
    public func createEvent(_ event: KGEEvent) throws {
        do {
            let appleEvent = event.toEKEvent()
            try eventStore.save(appleEvent, span: .futureEvents)
        } catch  {
            throw error
        }
    }
    
    public func deleteEvent(_ event: KGEEvent) throws {
        do {
            let appleEvent = event.toEKEvent()
            try eventStore.remove(appleEvent, span: .futureEvents)
        } catch {
            throw error
        }
    }
    
    public func fetchEvents() -> [KGEEvent] {
        let calendars = eventStore.calendars(for: .event)
        let endDate = Date()
        let startDate = Calendar.current.date(byAdding: .month, value: -1, to: endDate) ?? Date()
        let predicate = eventStore.predicateForEvents(withStart: startDate, end: endDate, calendars: calendars)
        let allEvents = eventStore.events(matching: predicate)
        let kgeEvents = allEvents
            .filter({ $0.title.hasPrefix("#KGE - ") })
            .map({ $0.toKGEEvent() })
        return kgeEvents
    }
}
