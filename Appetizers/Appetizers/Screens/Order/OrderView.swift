//
//  OrderView.swift
//  Appetizers
//
//  Created by Kody Buss on 2/23/24.
//

import SwiftUI

struct OrderView: View {
	@State private var orderItems = MockData.orderItems
	
    var body: some View {
		NavigationStack{
			
			ZStack{
				VStack{
					List {
						ForEach(orderItems) { appetizer in
							AppetizerListItemView(appetizer: appetizer)
						}
						.onDelete(perform: { index in
							orderItems.remove(atOffsets: index)
						})
					}
					
					Button {
						
					} label: {
						APButton(title: "$99.99 Place Order")
					}
					.padding(30)
					
				}
				
				if(orderItems.isEmpty){
					EmptyStateView(imageName: "list.bullet.rectangle.portrait", message: "You have no items in your order.\nPlease add an appetizer.")
				}
				
			}
			.navigationTitle("🛒 Order")
		}
    }
}

#Preview {
    OrderView()
}
