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
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday", selection: $viewModel.birthdate, displayedComponents: .date)
                    
                    Button{
                        viewModel.saveChange()
                    } label: {
                        Text("save changes")
                    }
                }
                
                Section(header: Text("Request")){
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                        .toggleStyle(SwitchToggleStyle(tint: Color("brandPrimary")))
                    Toggle("Extra Condiments", isOn: $viewModel.extraCondiments)
                        .toggleStyle(SwitchToggleStyle(tint: Color("brandPrimary")))
                }
            }
            .navigationBarTitle("Account")
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
            
        }
    }
}

#Preview {
    AccountView()
}
