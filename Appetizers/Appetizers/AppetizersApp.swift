//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Kody Buss on 2/23/24.
//

import SwiftUI

@main
struct AppetizersApp: App {
	var order = Order()
	
    var body: some Scene {
        WindowGroup {
			AppetizerTabView()
				.environmentObject(order)
        }
    }
}
