//
//  AccountViewModel.swift
//  project_5
//
//  Created by Atharv Choughule on 11/06/25.
//

import SwiftUI

final class AccountViewModel: ObservableObject{
   
   @Published var firstName = ""
   @Published var lastName = ""
   @Published var email = ""
   @Published var birthdate = Date()
   @Published var extraNapkins = false
   @Published var extraCondiments = false
    
    @Published var alertItem: AlertItem?

   
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false
        }
        guard email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        return true
    }
    func saveChange() {
        guard isValidForm else {
            return
            
            print("changes have saved successfully")
        }
    }
    
}
