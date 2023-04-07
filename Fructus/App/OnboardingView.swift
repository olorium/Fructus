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
	/// Fruits array to present in carousel.
	var fruits = FruitData.fruits
	
	// MARK: - Body
    var body: some View {
		TabView {
			ForEach(fruits[0...5]) { fruit in
				FruitCardView(fruit: fruit)
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
