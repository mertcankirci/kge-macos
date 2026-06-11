//
//  File.swift
//  FeatureKit
//
//  Created by Mertcan Kırcı on 11.06.2026.
//

import SwiftUI

public protocol OnboardingStyleProvider: Sendable {
    func titleAttributes(fontSize: CGFloat) -> AttributeContainer
    func highlightedAttributes(fontSize: CGFloat) -> AttributeContainer
}

public struct OnboardingViewStyle: OnboardingStyleProvider {
    public init() {}
    
    public func titleAttributes(fontSize: CGFloat) -> AttributeContainer {
        var container = AttributeContainer()
        container.foregroundColor = Color(hex: "#E8E7E3")
        container.font = Font.JetBrainsMono.semiBold(fontSize)
        return container
    }

    public func highlightedAttributes(fontSize: CGFloat) -> AttributeContainer {
        var container = AttributeContainer()
        container.foregroundColor = Color(hex: "#E8E7E3").opacity(0.56)
        container.font = Font.CormorantGaramond.italic(fontSize)
        return container
    }
}
