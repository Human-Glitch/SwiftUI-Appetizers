//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Kody Buss on 3/2/24.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
	func body(content: Content) -> some View {
		content
			.buttonStyle(.bordered)
			.tint(.brandPrimary)
			.controlSize(.large)
	}
}
