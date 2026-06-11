//
//  File.swift
//  FeatureKit
//
//  Created by Mertcan Kırcı on 11.06.2026.
//

import Foundation

public struct OnboardingViewUIModel: Sendable {
    let title: String
    let description: String
    let onboardingEvents: [OnboardingEventModel]
}

public extension OnboardingViewUIModel {
    static let mock = OnboardingViewUIModel(
        title: "Pick any event. \nMake it a session",
        description: "KGE lives beside Apple Calendar. When you want an event to become a focused session, just select it as KGE- a timer will appear the moment it begins.",
        onboardingEvents: .mock
    )
}
