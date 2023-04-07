//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Oleksii Vasyliev on 07.04.2023.
//

import SwiftUI

struct SettingsRowView: View {
	// MARK: - Properties
	/// The name label in the row.
	var name: String
	/// The content label in the row.
	var content: String?
	/// Label for the optional link in the row
	var linkLabel: String?
	/// Destination for the optional link in the row.
	var linkDestination: String?
	
	// MARK: - Body
	var body: some View {
		VStack {
			Divider()
				.padding(.vertical, 4)
			
			HStack {
				Text(name)
					.foregroundColor(.gray)
				Spacer()
				if let content = content {
					Text(content)
				} else if let linkLabel = linkLabel, let linkDestination = linkDestination {
					Link(destination: URL(string: "https://\(linkDestination)")!) {
						Text(linkLabel)
					}
					Image(systemName: "arrow.up.right.square")
						.foregroundColor(.pink)
				} else {
					EmptyView()
				}
			}
		}
	}
}

struct SettingsRowView_Previews: PreviewProvider {
	static var previews: some View {
		SettingsRowView(name: "Developer", content: "Oleksii Vasyliev")
			.previewLayout(.sizeThatFits)
			.padding()
		SettingsRowView(name: "Website", linkLabel: "linkLabel", linkDestination: "apple.com" )
			.previewLayout(.sizeThatFits)
			.padding()
	}
}
