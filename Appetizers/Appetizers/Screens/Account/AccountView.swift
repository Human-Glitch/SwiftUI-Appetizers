//
//  AccountView.swift
//  Appetizers
//
//  Created by Kody Buss on 2/23/24.
//

import SwiftUI

struct AccountView: View {
	
	@StateObject var viewModel = AccountViewModel()
	
    var body: some View {
		NavigationStack{
			Form{
				Section(header: Text("Personal Info")) {
					TextField("First Name", text: $viewModel.user.firstName)
					TextField("Last Name", text: $viewModel.user.lastName)
					TextField("Email", text: $viewModel.user.email)
						.keyboardType(.emailAddress)
						.autocapitalization(.none)
						.autocorrectionDisabled()
					
					DatePicker("Birthday", selection: $viewModel.user.birthday, displayedComponents: .date)
					
				}
				
				Section(header: Text("Requests")) {
					Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
					Toggle("Frequent Napkins", isOn: $viewModel.user.frequentRefills)
				}
				.toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
				
			}.navigationTitle("👤 Account")
			
			Button{
				viewModel.saveChanges()
			} label: {
				APButton(title: "Save Changes")
			}
			.padding(30)
		}
		.onAppear {
			viewModel.retrieveUser()
		}
		.alert(item: $viewModel.alertItem) { alertItem in
			Alert(
				title: alertItem.title,
				message: alertItem.message,
				dismissButton: alertItem.dismissButton
			)
		}
    }
}

#Preview {
    AccountView()
}
