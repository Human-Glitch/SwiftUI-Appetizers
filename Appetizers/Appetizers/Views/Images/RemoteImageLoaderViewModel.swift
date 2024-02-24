//
//  AppetizerRemoveImageViewModel.swift
//  Appetizers
//
//  Created by Kody Buss on 2/24/24.
//

import SwiftUI

final class RemoteImageLoaderViewModel: ObservableObject {
	@Published var image: Image? = nil
	
	func load(fromURLString: String){
		NetworkManager.shared.downloadImage(fromURLString: fromURLString) { uiImage in
			if(uiImage == nil) { return }
			
			DispatchQueue.main.async { // must update ui on the main thread
				self.image = Image(uiImage: uiImage!)
			}
		}
	}
}
