//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Oleksii Vasyliev on 07.04.2023.
//

import SwiftUI

struct FruitHeaderView: View {
	// MARK: - Properties
	/// Defines animation state.
	@State private var isAnimatingImage = false
	/// Fruit to present.
	var fruit: Fruit
	
	// MARK: - Body
    var body: some View {
		ZStack {
			LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
			Image(fruit.image)
				.resizable()
				.scaledToFit()
				.shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
				.padding(.vertical, 20)
				.scaleEffect(isAnimatingImage ? 1.0 : 0.6)
		}
		.frame(height: 440)
		.onAppear {
			withAnimation(.easeOut(duration: 0.5)) {
				isAnimatingImage = true
			}
		}
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
		FruitHeaderView(fruit: FruitData.fruits[0])
			.previewLayout(.fixed(width: 375, height: 440))
    }
}
