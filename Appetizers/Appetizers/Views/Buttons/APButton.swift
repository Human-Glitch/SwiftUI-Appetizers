//
//  APButton.swift
//  Appetizers
//
//  Created by Kody Buss on 2/27/24.
//

import SwiftUI

struct APButton: View {
	var title: LocalizedStringKey
    var body: some View {
		Button{
			
		} label: {
			Text(title)
				.frame(width: 260, height: 50)
				.padding(5)
		}
		.buttonStyle(.borderedProminent)
		.tint(.brandPrimary)
		.font(.title3)
		.fontWeight(.semibold)
		.padding()
    }
}

#Preview {
	APButton(title: "Test")
}