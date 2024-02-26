//
//  Alert.swift
//  Appetizers
//
//  Created by Kody Buss on 2/24/24.
//

import SwiftUI

struct AlertContext {
	static let invalidData = AlertItem(
		title: Text("Server Error"),
		message: Text("The data received from the server was invalid. Please contact support."),
		dismissButton: .default(Text("OK")))
	static let invalidResponse = AlertItem(
		title: Text("Server Error"),
		message: Text("Invalid response from the server. Please try again later or contact support."),
		dismissButton: .default(Text("OK")))
	
	static let invalidUrl = AlertItem(
		title: Text("Server Error"),
		message: Text("There was an issue connecting to the server. If this persists, please contact support"),
		dismissButton: .default(Text("OK")))
	
	static let unableToComplete = AlertItem(
		title: Text("Server Error"),
		message: Text("Unable to complete this request at this time. Please check your internet connection."),
		dismissButton: .default(Text("OK")))
}