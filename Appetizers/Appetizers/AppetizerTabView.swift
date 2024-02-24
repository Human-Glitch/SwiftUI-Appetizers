//
//  ContentView.swift
//  Appetizers
//
//  Created by Kody Buss on 2/23/24.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
			AppetizerListView()
				.tabItem {
					Label("Home", systemImage: "house")
				}
			
			AccountView()
				.tabItem {
					Label("Account", systemImage: "person")
				}
			
			OrderView()
				.tabItem {
					Label("Order", systemImage: "bag")
				}
			
        }
		.accentColor(.brandPrimary)
    }
}

#Preview {
    AppetizerTabView()
}
