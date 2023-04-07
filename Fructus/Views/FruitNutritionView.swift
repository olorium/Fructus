//
//  FruitNutritionView.swift
//  Fructus
//
//  Created by Oleksii Vasyliev on 07.04.2023.
//

import SwiftUI

struct FruitNutritionView: View {
	// MARK: - Properties
	/// Fruit to display nutrition data for.
	var fruit: Fruit
	/// Nutrients titles.
	let nutrients = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
	
	// MARK: - Body
    var body: some View {
		GroupBox {
			DisclosureGroup("Nutritional value per 100g") {
				ForEach(0..<nutrients.count, id: \.self) { item in
					Divider()
						.padding(.vertical, 2)
					HStack {
						Group {
							Image(systemName: "info.circle")
							Text(nutrients[item])
						}
						.foregroundColor(fruit.gradientColors[1])
						.font(.body.bold())
						Spacer(minLength: 25)
						Text(fruit.nutrition[item])
							.multilineTextAlignment(.trailing)
					}
				}
			}
		}
    }
}

struct FruitNutritionView_Previews: PreviewProvider {
    static var previews: some View {
		FruitNutritionView(fruit: FruitData.fruits[0])
			.previewLayout(.fixed(width: 375, height: 480))
			.padding()
    }
}
