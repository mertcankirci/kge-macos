//
//  ContentView.swift
//  kge-macos
//
//  Created by Mertcan Kırcı on 16.04.2026.
//

import SwiftUI
import FeatureKit

struct ContentView: View {
    var body: some View {
        OnboardingView(viewModel: OnboardingViewModel(uiModel: .mock, styleProvider: OnboardingViewStyle()))
    }
}

#Preview {
    ContentView()
}
