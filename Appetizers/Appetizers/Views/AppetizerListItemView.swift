//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Kody Buss on 2/24/24.
//

import SwiftUI

struct AppetizerListItemView: View {
	let appetizer: Appetizer
	
    var body: some View {
		HStack{
			Image(systemName: appetizer.imageURL)
				.resizable()
				.scaledToFit()
				.presentationCornerRadius(8)
			
			VStack(alignment: .leading, spacing: 10){
				Text(appetizer.name)
					.font(.title2)
					.fontWeight(.medium)
				
				Text("\(appetizer.price, specifier: "%.2f")")
					.foregroundStyle(.secondary)
					.fontWeight(.semibold)
			}
			.padding()
		}
		.frame(width: .infinity, height: 90)
		.padding()
    }
}

#Preview {
	AppetizerListItemView(appetizer: MockData.sampleAppetizer)
}
