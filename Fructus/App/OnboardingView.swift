//
//  OnboardingView.swift
//  Fructus
//
//  Created by Oleksii Vasyliev on 07.04.2023.
//

import SwiftUI

/// Onboarding view with fruit cards carousel.
struct OnboardingView: View {
	// MARK: - Properties
	
	// MARK: - Body
    var body: some View {
		TabView {
			ForEach(0..<5) { item in
				FruitCardView()
			}
		}
		.tabViewStyle(PageTabViewStyle())
		.padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}