//
//  AlertItem.swift
//  Appetizers
//
//  Created by Kody Buss on 2/24/24.
//

import SwiftUI

struct AlertItem: Identifiable {
	let id = UUID()
	let title: Text
	let message: Text
	let dismissButton: Alert.Button
}
