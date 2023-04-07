//
//  StartButtonView.swift
//  Fructus
//
//  Created by Oleksii Vasyliev on 07.04.2023.
//

import SwiftUI

/// The button for onboarding cars.
struct StartButtonView: View {
	// MARK: - Properties
	/// Switch to `false` to finish onboarding.
	@AppStorage("isOnboarding") var isOnboarding: Bool?
	
	// MARK: - Body
    var body: some View {
		Button {
			isOnboarding = false
		} label: {
			HStack(spacing: 8) {
				Text("Start")
				Image(systemName: "arrow.right.circle")
					.imageScale(.large)
			}
			.padding(.horizontal, 16)
			.padding(.vertical, 10)
			.background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
		}
		.accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
			.previewLayout(.sizeThatFits)
    }
}
