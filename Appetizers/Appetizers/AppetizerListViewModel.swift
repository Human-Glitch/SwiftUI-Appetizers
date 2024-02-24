//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Kody Buss on 2/24/24.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
	@Published public var appetizers: [Appetizer] = []
	
	func getAppetizers() {
		NetworkManager.shared.getAppetizers { result in
			DispatchQueue.main.async{ // UI redraws has to happen on the main thread so queue it
				switch result {
					case .success(let appetizers):
						self.appetizers = appetizers
						
					case .failure(let error):
						print(error.localizedDescription)
				}
			}
		}
	}
}
