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
			AppetizerRemoteImageView(urlString: appetizer.imageURL)
				.scaledToFit()
				.cornerRadius(8)
			
			VStack(alignment: .leading, spacing: 10){
				Text(appetizer.name)
					.font(.title2)
					.fontWeight(.medium)
					.scaledToFit()
					.minimumScaleFactor(0.5)
				
				Text("\(appetizer.price, specifier: "%.2f")")
					.foregroundStyle(.secondary)
					.fontWeight(.semibold)
			}
			.padding()
		}
		.frame(width: .infinity, height: 90)
    }
}

#Preview {
	AppetizerListItemView(appetizer: MockData.sampleAppetizer)
}
