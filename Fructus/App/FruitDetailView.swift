//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Oleksii Vasyliev on 07.04.2023.
//

import SwiftUI

struct FruitDetailView: View {
	// MARK: - Properties.
	/// Fruit for this screen.
	var fruit: Fruit
	
	// MARK: - Body.
    var body: some View {
		NavigationView {
			ScrollView(.vertical, showsIndicators: false) {
				VStack(alignment: .center, spacing: 20) {
					FruitHeaderView(fruit: fruit)
					
					VStack(alignment: .leading, spacing: 20) {
						Text(fruit.title)
							.font(.largeTitle)
							.fontWeight(.heavy)
							.foregroundColor(fruit.gradientColors[1])
						
						Text(fruit.headline)
							.font(.headline)
							.multilineTextAlignment(.leading)
						
						Text("Learn more about \(fruit.title)".uppercased())
							.fontWeight(.bold)
							.foregroundColor(fruit.gradientColors[1])
						
						Text(fruit.description)
							.multilineTextAlignment(.leading)
						
						SourceLinkView()
							.padding(.top, 10)
							.padding(.bottom, 40)
					}
					.padding(.horizontal, 20)
					.frame(maxWidth: 640, alignment: .center)
				}
			}
			.edgesIgnoringSafeArea(.top)
		}
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
		FruitDetailView(fruit: FruitData.fruits[0])
    }
}
