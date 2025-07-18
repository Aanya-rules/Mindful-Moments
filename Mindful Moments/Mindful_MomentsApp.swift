//
//  Mindful_MomentsApp.swift
//  Mindful Moments
//
//  Created by Aanya Mahapatra on 15/07/2025.
//

import SwiftUI

@main
struct Mindful_MomentsApp: App {
    init() {
        _ = AudioManager.shared // 🔊 Start background music
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
