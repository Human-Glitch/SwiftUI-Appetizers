//
//  Appetizer.swift
//  Appetizers
//
//  Created by Kody Buss on 2/24/24.
//

import Foundation

struct Appetizer: Decodable, Identifiable, Hashable {
	var id: UUID = UUID()
	let name: String
	let description: String
	let price: Double
	let imageURL: String
	let calories: Int
	let protein: Int
	let carbs: Int
	
	init(name: String, description: String, price: Double, imageURL: String, calories: Int, protein: Int, carbs: Int) {
		self.name = name
		self.description = description
		self.price = price
		self.imageURL = imageURL
		self.calories = calories
		self.protein = protein
		self.carbs = carbs
	}
}

struct AppetizerResponse: Decodable {
	let request: [Appetizer]
}

struct MockData {
	
	static let sampleAppetizer = Appetizer(
		name: "Test Appetizer",
		description: "This is the description for my appetizer. It's yummy.",
		price: 9.99,
		imageURL: "",
		calories: 99,
		protein: 99,
		carbs: 99)
	
	static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
	
	static let orderItemOne = Appetizer(
		name: "Test Appetizer One",
		description: "This is the description for my appetizer. It's yummy.",
		price: 9.99,
		imageURL: "",
		calories: 99,
		protein: 99,
		carbs: 99)
	
	static let orderItemTwo = Appetizer(
		name: "Test Appetizer Two",
		description: "This is the description for my appetizer. It's yummy.",
		price: 9.99,
		imageURL: "",
		calories: 99,
		protein: 99,
		carbs: 99)
	
	static let orderItemThree   = Appetizer(
		name: "Test Appetizer Three",
		description: "This is the description for my appetizer. It's yummy.",
		price: 9.99,
		imageURL: "",
		calories: 99,
		protein: 99,
		carbs: 99)
	
	static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}

