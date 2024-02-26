//
//  AppetizerView.swift
//  Appetizers
//
//  Created by Kody Buss on 2/25/24.
//

import SwiftUI

struct AppetizerDetailView: View {
	let appetizer: Appetizer
	
    var body: some View {
		VStack(alignment: .center, spacing: 25){
			RemoteImageLoaderView(urlString: appetizer.imageURL)
				.scaledToFit()
			
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
				Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
					.padding(5)
			}
			.frame(width: 260, height: 50)
			.buttonStyle(.borderedProminent)
			.tint(.brandPrimary)
			.font(.title3)
			.fontWeight(.semibold)
			.padding(.bottom, 30)
		}
		.frame(width: 300, height: 525)
		.background(Color(.systemBackground))
		.cornerRadius(12)
		.shadow(radius: 40)
		.overlay(
			Button{
				
			}
			label: {
				ZStack{
					Circle()
						.frame(width: 30, height: 30)
						.foregroundColor(.white)
						.opacity(0.6)
					
					Image(systemName: "xmark")
						.imageScale(.small)
						.frame(width: 44, height: 44)
						.foregroundColor(.black)
				}
				
			},
			alignment: .topTrailing)
    }
}

#Preview {
	AppetizerDetailView(appetizer: MockData.sampleAppetizer)
}
