//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Kody Buss on 2/23/24.
//

import SwiftUI

struct AppetizerListView: View {
	@StateObject var viewModel = AppetizerListViewModel()
	@State var isShowingDetailView = false
	@State var selectedAppetizer : Appetizer?
	
	var body: some View {
		ZStack{
			NavigationStack{
				Text("🍟 Appetizers")
					.frame(width: 350, alignment: .leading)
					.font(.largeTitle)
					.bold()
					.padding()
				
				List(viewModel.appetizers) { appetizer in
					AppetizerListItemView(appetizer: appetizer)
						.onTapGesture {
							isShowingDetailView = true
							selectedAppetizer = appetizer
						}
				}
				.disabled(isShowingDetailView)
			}
			.onAppear {
				viewModel.getAppetizers()
			}
			.blur(radius: isShowingDetailView ? 20 : 0)
			
			if isShowingDetailView {
				AppetizerDetailView(
					appetizer: selectedAppetizer!,
					isShowingDetailView: $isShowingDetailView)
			}
			
			if viewModel.isLoading {
				LoadingView()
			}
		}
		.alert(item: $viewModel.alertItem) { alertItem in
			Alert(
				title: alertItem.title,
				message: alertItem.message,
				dismissButton: alertItem.dismissButton)
		}
	}
}

#Preview {
    AppetizerListView()
}
