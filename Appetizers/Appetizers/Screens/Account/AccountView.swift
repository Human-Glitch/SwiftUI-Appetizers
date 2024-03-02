//
//  AccountView.swift
//  Appetizers
//
//  Created by Kody Buss on 2/23/24.
//

import SwiftUI

struct AccountView: View {
	
	@StateObject var viewModel = AccountViewModel()
	@FocusState private var focusedTextField: FormTextField?
	
	enum FormTextField {
		case firstName, lastName, email
	}
	
    var body: some View {
		NavigationStack{
			Form{
				Section(header: Text("Personal Info")) {
					TextField("First Name", text: $viewModel.user.firstName)
						.focused($focusedTextField, equals: .firstName)
						.onSubmit { focusedTextField = .lastName }
						.submitLabel(.next)
					
					TextField("Last Name", text: $viewModel.user.lastName)
						.focused($focusedTextField, equals: .lastName)
						.onSubmit { focusedTextField = .email }
						.submitLabel(.next)
					
					TextField("Email", text: $viewModel.user.email)
						.focused($focusedTextField, equals: .email)
						.onSubmit { focusedTextField = nil }
						.submitLabel(.continue)
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
				
			}
			.navigationTitle("👤 Account")
			.toolbar{
				ToolbarItemGroup(placement: .keyboard) {
					HStack {
						Spacer()
						Button("Done") { focusedTextField = nil }
					}
				}
			}
			
			Button{
				viewModel.saveChanges()
			} label: {
				Text("Save Changes")
			}
			.modifier(StandardButtonStyle())
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
