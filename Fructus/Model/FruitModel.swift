//
//  FruitModel.swift
//  Fructus
//
//  Created by Oleksii Vasyliev on 07.04.2023.
//

import SwiftUI

/// Model describes fruit.
struct Fruit: Identifiable {
	/// Unique id for fruit
	var id = UUID()
	/// The title for the fruit description.
	var title: String
	/// The headline for the fruit description
	var headline: String
	/// The image of the fruit.
	var image: String
	/// Collection of colors, used for background.
	var gradientColors: [Color]
	/// The description of the fruit.
	var description: String
	/// Collection of nutrition informations about fruit.
	var nutrition: [String]
}
