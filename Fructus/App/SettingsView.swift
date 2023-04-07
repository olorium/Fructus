//
//  SettingsView.swift
//  Fructus
//
//  Created by Oleksii Vasyliev on 07.04.2023.
//

import SwiftUI

struct SettingsView: View {
	// MARK: - Properties
	@Environment(\.presentationMode) var presentationMode
	/// Shows onboarding screen if `true`.
	@AppStorage("isOnboarding") var isOnboarding = true
	
	// MARK: - Body
    var body: some View {
		NavigationView {
			ScrollView(.vertical, showsIndicators: false) {
				VStack(spacing: 20) {
					GroupBox {
						Divider()
							.padding(.vertical, 4)
						
						HStack(alignment: .center, spacing: 10) {
							Image("logo")
								.resizable()
								.scaledToFit()
								.frame(width: 80, height: 80)
								.cornerRadius(9)
							
							Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
								.font(.footnote)
						}
					} label: {
						SettingsLabelView(
							labelText: "Fructus",
							labelImage: "info.circle")
					}
					
					GroupBox {
						Divider()
							.padding(.vertical, 4)
						
						Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
							.padding(.vertical, 8)
							.frame(minHeight: 60)
							.layoutPriority(1)
							.font(.footnote)
							.multilineTextAlignment(.leading)
						
						Toggle(isOn: $isOnboarding) {
							if isOnboarding {
								Text("Restarted".uppercased())
									.fontWeight(.bold)
									.foregroundColor(Color.green)
							} else {
								Text("Restart".uppercased())
									.fontWeight(.bold)
									.foregroundColor(Color.secondary)
							}
						}
						.padding()
						.background(
							Color(UIColor.tertiarySystemBackground)
								.clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
						)
					} label: {
						SettingsLabelView(labelText: "Customisation", labelImage: "paintbrush")
					}

					
					GroupBox {
						SettingsRowView(name: "Developer", content: "Oleksii Vasyliev")
						SettingsRowView(name: "Designer", content: "Robert Petras")
						SettingsRowView(name: "Compatibility", content: "iOS 14")
						SettingsRowView(name: "Website", linkLabel: "Apple", linkDestination: "apple.com")
						SettingsRowView(name: "SwiftUI", content: "2.0")
						SettingsRowView(name: "Version", content: "1.0")
						
					} label: {
						SettingsLabelView(
							labelText: "Application",
							labelImage: "apps.iphone")
					}


				}
				.padding(.horizontal)
				.navigationTitle("Settings")
				.navigationBarItems(trailing: Button(
					action: {
					presentationMode.wrappedValue.dismiss()
				}, label: {
					Image(systemName: "xmark")
				}))
			}
		}
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
