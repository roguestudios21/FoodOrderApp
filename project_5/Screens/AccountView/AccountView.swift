//
//  AccountView.swift
//  project_5
//
//  Created by Atharv Choughule on 10/06/25.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")){
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModel.user.birthdate, displayedComponents: .date)
                    
                    Button{
                        viewModel.saveChange()
                    } label: {
                        Text("save changes")
                    }
                }
                
                Section(header: Text("Request")){
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                        .toggleStyle(SwitchToggleStyle(tint: Color("brandPrimary")))
                    Toggle("Extra Condiments", isOn: $viewModel.user.extraCondiments)
                        .toggleStyle(SwitchToggleStyle(tint: Color("brandPrimary")))
                }
            }
            .navigationBarTitle("Account")
        }
        .onAppear{
            viewModel.retriveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
            
        }
    }
}

#Preview {
    AccountView()
}
