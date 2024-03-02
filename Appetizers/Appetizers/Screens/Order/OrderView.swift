//
//  OrderView.swift
//  Appetizers
//
//  Created by Kody Buss on 2/23/24.
//

import SwiftUI

struct OrderView: View {
	@EnvironmentObject var order: Order
	
    var body: some View {
		NavigationStack{
			
			ZStack{
				VStack{
					List {
						ForEach(order.items) { appetizer in
							AppetizerListItemView(appetizer: appetizer)
						}
						.onDelete(perform: order.remove)
					}
					
					Button {
						
					} label: {
						APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
					}
					.padding(30)
					
				}
				
				if(order.items.isEmpty){
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
