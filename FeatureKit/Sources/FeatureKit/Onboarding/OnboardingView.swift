//
//  SwiftUIView.swift
//  FeatureKit
//
//  Created by Mertcan Kırcı on 11.06.2026.
//

import SwiftUI
import Extensions

private extension OnboardingView {
    enum Constant {
        static let descriptionTopPadding = 12.0
        static let descriptionHorizontalPadding = 72.0
        static let ratio = 2.0
        static let titleTopPadding = 48.0
        static let eventItemTopPadding = 36.0
        static let timerInterval = 3.0
    }
}

public struct OnboardingView: View {
    @State private var timer = Timer.publish(every: Constant.timerInterval, on: .main, in: .common).autoconnect()
    let viewModel: OnboardingViewModelInterface
    
    public init(viewModel: OnboardingViewModelInterface) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            Spacer()
            title
                .padding(.top, Constant.titleTopPadding)
            description
                .padding(.top, Constant.descriptionTopPadding)
            eventItem
                .padding(.top, Constant.eventItemTopPadding)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onReceive(timer) { _ in
            withAnimation {
                viewModel.selectRandomEvent()
            }
        }
    }
}

//MARK: - Views
private extension OnboardingView {
    var title: some View {
        Text(viewModel.titleAttributedString)
            .multilineTextAlignment(.center)
    }
    
    var description: some View {
        Text(viewModel.descriptionAttributedString)
            .multilineTextAlignment(.center)
            .padding(.horizontal, Constant.descriptionHorizontalPadding)
    }
    
    var eventItem: some View {
        OnboardingEventItem(events: .mock, selectedEvent: viewModel.selectedEvent)
            .aspectRatio(Constant.ratio, contentMode: .fit)
            .padding(.horizontal, Constant.descriptionHorizontalPadding)
    }
}

#Preview {
    OnboardingView(viewModel: OnboardingViewModel(uiModel: .mock, styleProvider: OnboardingViewStyle()))
}
