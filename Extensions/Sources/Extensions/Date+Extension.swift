//
//  File.swift
//  Extensions
//
//  Created by Mertcan Kırcı on 11.06.2026.
//

import Foundation

public extension Date {
    func formattedUppercaseAbbreviatedDate() -> String {
        self.formatted(
            .dateTime
            .weekday(.abbreviated)
            .day(.defaultDigits)
            .month(.abbreviated)
        ).uppercased()
    }
}
