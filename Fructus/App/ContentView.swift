//
//  ContentView.swift
//  Fructus
//
//  Created by Oleksii Vasyliev on 07.04.2023.
//

import SwiftUI

struct ContentView: View {
	// MARK: - Properties.
	/// Used to present settings sheet.
	@State private var isShowingSettings = false
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
			.navigationTitle("Fruits")
			.navigationBarItems(trailing: Button(action: {
				isShowingSettings = true
			}, label: {
				Image(systemName: "slider.horizontal.3")
			})
				.sheet(isPresented: $isShowingSettings) { SettingsView() }
			)
		}
		.navigationViewStyle(StackNavigationViewStyle())
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
