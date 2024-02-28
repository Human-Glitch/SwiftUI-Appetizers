//
//  AppetizerView.swift
//  Appetizers
//
//  Created by Kody Buss on 2/25/24.
//

import SwiftUI

struct AppetizerDetailView: View {
	let appetizer: Appetizer
	@Binding var isShowingDetailView: Bool
	
    var body: some View {
		VStack(alignment: .center, spacing: 25){
			RemoteImageLoaderView(urlString: appetizer.imageURL)
				.aspectRatio(contentMode: .fill)
			
			Text(appetizer.name)
				.font(.title2)
				.fontWeight(.semibold)
			
			Text(appetizer.description)
				.multilineTextAlignment(.center)
				.font(.body)
				.padding()
			
			HStack(spacing: 10){
				Spacer()
				
				VStack{
					Text("Calories")
						.font(.caption)
						.bold()
					
					Text("\(appetizer.calories)")
						.foregroundStyle(.secondary)
						.fontWeight(.semibold)
						.italic()
				}
				.frame(width: 65, height: 50, alignment: .center)
				
				VStack{
					Text("Carbs")
						.font(.caption)
						.bold()
					
					Text("\(appetizer.carbs) g")
						.foregroundStyle(.secondary)
						.fontWeight(.semibold)
						.italic()
				}
				.frame(width: 65, height: 50, alignment: .center)
				
				VStack{
					Text("Protein")
						.font(.caption)
						.bold()
					
					Text("\(appetizer.carbs) g")
						.foregroundStyle(.secondary)
						.fontWeight(.semibold)
						.italic()
				}
				.frame(width: 65, height: 50, alignment: .center)
				
				Spacer()
			}
			.padding()
			
			Button{
				
			} label: {
				APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
			}
		}
		.frame(width: 300, height: 600)
		.background(Color(.systemBackground))
		.cornerRadius(12)
		.shadow(radius: 40)
		.overlay(
			Button{
				isShowingDetailView = false
			} label: {
				XDismissButton()
			},
			alignment: .topTrailing)
    }
}

#Preview {
	AppetizerDetailView(
		appetizer: MockData.sampleAppetizer,
		isShowingDetailView: .constant(false))
}
