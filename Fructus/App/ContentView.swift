//
//  ContentView.swift
//  Fructus
//
//  Created by Oleksii Vasyliev on 07.04.2023.
//

import SwiftUI

struct ContentView: View {
	// MARK: - Properties.
	/// Data to present.
	private var fruits = FruitData.fruits
	
	// MARK: - Body.
    var body: some View {
		NavigationView {
			List {
				ForEach(fruits.shuffled()) { fruit in
					NavigationLink {
						FruitDetailView(fruit: fruit)
					} label: {
						FruitRowView(fruit: fruit)
							.padding(.vertical, 4)
					}
				}
			}
			.listStyle(.plain)
			.navigationTitle("Fruits")
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
