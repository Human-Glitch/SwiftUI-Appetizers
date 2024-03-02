//
//  Alert.swift
//  Appetizers
//
//  Created by Kody Buss on 2/24/24.
//

import SwiftUI

struct AlertContext {
	//MARK: - Api Alerts
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
	
	//MARK: - Account Alerts
	static let invalidForm = AlertItem(
		title: Text("Invalid Form"),
		message: Text("Please ensure all fields in the form have been filled out"),
		dismissButton: .default(Text("OK")))
	
	static let invalidEmail = AlertItem(
		title: Text("Invalid Email"),
		message: Text("Please ensure you are using a valid email."),
		dismissButton: .default(Text("OK")))
	
	//MARK - Account Saving
	static let userSaveSuccess = AlertItem(
		title: Text("Profile Saved"),
		message: Text("Your profile information was successfully saved."),
		dismissButton: .default(Text("OK")))
	
	static let invalidUserData = AlertItem(
		title: Text("Profile Error"),
		message: Text("There was an error saving or retrieving your profile."),
		dismissButton: .default(Text("OK")))
}
