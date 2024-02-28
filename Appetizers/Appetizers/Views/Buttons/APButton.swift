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
		Text(title)
			.frame(width: 250, height: 50)
			.font(.title3)
			.fontWeight(.semibold)
			.foregroundStyle(.white)
			.background(.brandPrimary)
			.cornerRadius(8)
			.padding()
    }
}

#Preview {
	APButton(title: "Test")
}
