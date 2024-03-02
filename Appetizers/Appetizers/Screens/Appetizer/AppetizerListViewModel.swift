//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Kody Buss on 2/24/24.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
	@Published var appetizers: [Appetizer] = []
	@Published var alertItem: AlertItem?
	@Published var isLoading = false
	@Published var isShowingDetailView = false
	@Published var selectedAppetizer : Appetizer?
	
	func getOpacity() -> CGFloat{
		isShowingDetailView ? 20 : 0
	}
	
	func getAppetizers() {
		isLoading = true
		NetworkManager.shared.getAppetizers { result in
			DispatchQueue.main.async{ [self] in // UI redraws has to happen on the main thread so queue it
				isLoading = false
				switch result {
					case .success(let appetizers):
						self.appetizers = appetizers
						
					case .failure(let error):
						switch(error){
							case .invalidResponse:
								alertItem = AlertContext.invalidResponse
								
							case .invalidURL:
								alertItem = AlertContext.invalidUrl
								
							case .invalidData:
								alertItem = AlertContext.invalidData
						
							default:
								alertItem = AlertContext.unableToComplete
						}
				}
			}
		}
	}
	
	func getAppetizersAsync() async throws {
		isLoading = true
		
		do {
			self.appetizers = try await NetworkManager.shared.getAppetizersAsync()
		} catch {
			throw APError.invalidResponse
		}
		
		isLoading = false
						
	}
}
