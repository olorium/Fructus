//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Oleksii Vasyliev on 07.04.2023.
//

import SwiftUI

/// View with the label for group settings sections
struct SettingsLabelView: View {
	// MARK: - Properties
	/// Label text
	var labelText: String
	/// Label image
	var labelImage: String
	
	// MARK: - Body
    var body: some View {
		HStack {
			Text(labelText.uppercased())
				.fontWeight(.bold)
			Spacer()
			Image(systemName: labelImage)
		}
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
		SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
