//
//  ActivityIndicator.swift
//  Appetizers
//
//  Created by Kody Buss on 2/24/24.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
	func makeUIView(context: Context) -> UIActivityIndicatorView {
		let activityIndicatorView = UIActivityIndicatorView(style: .large)
		
		activityIndicatorView.color = UIColor.brandPrimary
		activityIndicatorView.startAnimating()
		
		return activityIndicatorView
	}
	
	func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
}
