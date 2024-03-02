//
//  EmptyStateView.swift
//  Appetizers
//
//  Created by Kody Buss on 3/1/24.
//

import SwiftUI

struct EmptyStateView: View {
	let imageName: String
	let message: String
	
    var body: some View {
		ZStack{
			Color(.systemBackground)
				.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
			
			VStack{
				Image(systemName: imageName)
					.resizable()
					.scaledToFit()
					.frame(height: 150)
				
				Text(message)
					.font(.title3)
					.fontWeight(.semibold)
					.multilineTextAlignment(.center)
					.foregroundStyle(.secondary)
					.padding()
			}
		}
    }
}

#Preview {
	EmptyStateView(
		imageName: "list.bullet.rectangle.portrait",
		message: "Default Message"
	)
}
