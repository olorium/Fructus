//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Oleksii Vasyliev on 07.04.2023.
//

import SwiftUI

struct SourceLinkView: View {
	
	// MARK: - Body
    var body: some View {
		GroupBox {
			HStack {
				Text("Content source")
				Spacer()
				Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
				Image(systemName: "arrow.up.right.square")
			}
			.font(.footnote)
		}
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
