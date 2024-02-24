//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Kody Buss on 2/23/24.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
		NavigationStack{
			List(MockData.appetizers) { appetizer in
				AppetizerListCell(appetizer: appetizer)
			}
			.navigationTitle("🍟 Appetizers")
		}
    }
}

#Preview {
    AppetizerListView()
}
