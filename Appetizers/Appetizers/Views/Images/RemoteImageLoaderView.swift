//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Kody Buss on 2/24/24.
//

import SwiftUI

struct RemoteImageLoaderView: View {
	@StateObject var imageLoader = RemoteImageLoaderViewModel()
	let urlString: String
	
	var body: some View {
		RemoteImage(image: imageLoader.image)
			.onAppear {
				imageLoader.load(fromURLString: urlString)
			}
	}
}
