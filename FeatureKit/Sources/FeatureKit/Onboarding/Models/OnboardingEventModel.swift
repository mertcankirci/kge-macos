//
//  File.swift
//  FeatureKit
//
//  Created by Mertcan Kırcı on 11.06.2026.
//

import Foundation

public struct OnboardingEventModel: Sendable, Hashable, Identifiable {
    public let id = UUID().uuidString
    public let time: String
    public let title: String
    
    public init(time: String, title: String) {
        self.time = time
        self.title = title
    }
}

public extension [OnboardingEventModel] {
    static let mock = [
        OnboardingEventModel(
            time: "9.00",
            title: "Standup-Product"
        ),
        OnboardingEventModel(
            time: "10.30",
            title: "Email triage"
        ),
        OnboardingEventModel(
            time: "14.00",
            title: "Draft Q2 Research Synthesis",
        ),
        OnboardingEventModel(
            time: "16.30",
            title: "Review Open PRs"
        ),
        OnboardingEventModel(
            time: "19.00",
            title: "Reading-Borges"
        )
    ]
}
