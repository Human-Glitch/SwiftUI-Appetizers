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
				.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/) // fills entire screen
			
			ActivityIndicator()
		}
	}
}
