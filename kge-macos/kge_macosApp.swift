//
//  kge_macosApp.swift
//  kge-macos
//
//  Created by Mertcan Kırcı on 16.04.2026.
//

import SwiftUI
import Fonts

@main
struct kge_macosApp: App {
    
    init() {
        Fonts.registerAll()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
