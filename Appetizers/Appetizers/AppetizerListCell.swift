//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Kody Buss on 2/24/24.
//

import SwiftUI

struct AppetizerListCell: View {
	let appetizer: Appetizer
	
    var body: some View {
		HStack{
			Image(systemName: "sun.max")
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
		.padding(.leading)
    }
}

#Preview {
	AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
