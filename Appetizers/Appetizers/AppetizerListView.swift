//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Kody Buss on 2/23/24.
//

import SwiftUI

struct AppetizerListView: View {
	@StateObject var viewModel = AppetizerListViewModel()
	
    var body: some View {
		NavigationStack{
			List(viewModel.appetizers) { appetizer in
				AppetizerListCell(appetizer: appetizer)
			}
			.navigationTitle("🍟 Appetizers")
		}
		.onAppear {
			viewModel.getAppetizers()
		}
    }
}

#Preview {
    AppetizerListView()
}
