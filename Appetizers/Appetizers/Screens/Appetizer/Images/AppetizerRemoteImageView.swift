//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Kody Buss on 2/24/24.
//

import SwiftUI

struct AppetizerRemoteImageView: View {
	@StateObject var imageLoader = AppetizerImageLoaderViewModel()
	let urlString: String
	
	var body: some View {
		RemoteImage(image: imageLoader.image)
			.onAppear {
				imageLoader.load(fromURLString: urlString)
			}
	}
}
