//
//  LoadingView.swift
//  Appetizers
//
//  Created by Kody Buss on 2/24/24.
//

import SwiftUI

struct LoadingView: View {
	var body: some View {
		ZStack{
			Color(.systemBackground)
				.ignoresSafeArea() // fills entire screen
			
			ActivityIndicator()
		}
	}
}
