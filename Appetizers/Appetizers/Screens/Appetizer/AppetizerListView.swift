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
		ZStack{
			NavigationStack{
				Text("🍟 Appetizers")
					.frame(width: 350, alignment: .leading)
					.font(.largeTitle)
					.bold()
					.padding()
				
				List(viewModel.appetizers) { appetizer in
					AppetizerListItemView(appetizer: appetizer)
						.listRowSeparator(.hidden)
						.onTapGesture {
							viewModel.isShowingDetailView = true
							viewModel.selectedAppetizer = appetizer
						}
				}
				.disabled(viewModel.isShowingDetailView)
			}
			.task {
				do {
					try await viewModel.getAppetizersAsync()
				} catch {
					switch error {
						case APError.invalidResponse:
							viewModel.alertItem = AlertContext.invalidResponse
						
						default:
							viewModel.alertItem = AlertContext.unableToComplete
						
					}
					
				}
			}
			.blur(radius: viewModel.getOpacity())
			
			if viewModel.isShowingDetailView {
				AppetizerDetailView(
					appetizer: viewModel.selectedAppetizer!,
					isShowingDetailView: $viewModel.isShowingDetailView)
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
