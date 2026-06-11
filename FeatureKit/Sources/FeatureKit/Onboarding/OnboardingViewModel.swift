//
//  File.swift
//  FeatureKit
//
//  Created by Mertcan Kırcı on 11.06.2026.
//

import Foundation
import Observation

@MainActor
public protocol OnboardingViewModelInterface {
    var titleAttributedString: AttributedString { get }
    var descriptionAttributedString: AttributedString { get }
    var selectedEvent: OnboardingEventModel? { get }
    
    func selectRandomEvent()
}

@Observable
@MainActor
public final class OnboardingViewModel {
    private let uiModel: OnboardingViewUIModel
    nonisolated private let styleProvider: OnboardingStyleProvider
    public var selectedEvent: OnboardingEventModel?

    public init(uiModel: OnboardingViewUIModel, styleProvider: OnboardingStyleProvider) {
        self.uiModel = uiModel
        self.styleProvider = styleProvider
    }
}

extension OnboardingViewModel: OnboardingViewModelInterface {
    nonisolated public var titleAttributedString: AttributedString {
        var message = AttributedString(uiModel.title)
        message.mergeAttributes(styleProvider.titleAttributes(fontSize: 96))
        
        if let anyEventRange = message.range(of: "any event.") {
            let highlightedAttrs = styleProvider.highlightedAttributes(fontSize: 96)
            message[anyEventRange].mergeAttributes(highlightedAttrs)
        }
        
        return message
    }
    
    nonisolated public var descriptionAttributedString: AttributedString {
        var message = AttributedString(uiModel.description)
        message.mergeAttributes(styleProvider.highlightedAttributes(fontSize: 32))
        
        if let selectAsKGERange = message.range(of: "select it as KGE") {
            let titleAttributes = styleProvider.titleAttributes(fontSize: 32)
            message[selectAsKGERange].mergeAttributes(titleAttributes)
        }
        
        return message
    }
    
    public func selectRandomEvent() {
        selectedEvent = [OnboardingEventModel].mock.randomElement()
    }
}

