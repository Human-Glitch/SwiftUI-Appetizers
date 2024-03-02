//
//  SwiftUIView.swift
//  Appetizers
//
//  Created by Kody Buss on 3/1/24.
//

import SwiftUI

final class Order: ObservableObject {
	@Published var items: [Appetizer] = []
	
	var totalPrice: Double {
		items.reduce(0) { total, item in
			total + item.price
		}
	}
	
	func add(_ appetizer: Appetizer){
		items.append(appetizer)
	}
	
	func remove(_ indexSet: IndexSet) {
		items.remove(atOffsets: indexSet)
	}
}
