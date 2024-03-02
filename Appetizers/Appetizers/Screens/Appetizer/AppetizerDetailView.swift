//
//  AppetizerView.swift
//  Appetizers
//
//  Created by Kody Buss on 2/25/24.
//

import SwiftUI

struct AppetizerDetailView: View {
	@EnvironmentObject var order: Order
	
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
				
				NutritionInfo(title: "Calories", value: "\(appetizer.calories)")
				NutritionInfo(title: "Carbs", value: "\(appetizer.carbs) g")
				NutritionInfo(title: "Protein",value: "\(appetizer.protein) g")
				
				Spacer()
			}
			.padding()
			
			Button{
				order.add(appetizer)
				isShowingDetailView = false
			} label: {
				Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
			}
			.modifier(StandardButtonStyle())
			.padding(30)
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

struct NutritionInfo: View {
	let title: String
	let value: String
	
	var body: some View {
		VStack{
			Text(title)
				.font(.caption)
				.bold()
			
			Text(value)
				.foregroundStyle(.secondary)
				.fontWeight(.semibold)
				.italic()
		}
		.frame(
			width: 65,
			height: 50,
			alignment: .center)
	}
}

#Preview {
	AppetizerDetailView(
		appetizer: MockData.sampleAppetizer,
		isShowingDetailView: .constant(false))
}
