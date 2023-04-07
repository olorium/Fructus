//
//  FructusApp.swift
//  Fructus
//
//  Created by Oleksii Vasyliev on 07.04.2023.
//

import SwiftUI

@main
struct FructusApp: App {
	/// Shows onboarding screen if `true`.
	@AppStorage("isOnboarding") var isOnboarding = true
	
    var body: some Scene {
        WindowGroup {
			if isOnboarding {
				OnboardingView()
			} else {
				ContentView()
			}
        }
    }
}
