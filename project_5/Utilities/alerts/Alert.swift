//
//  Alert.swift
//  project_5
//
//  Created by Atharv Choughule on 10/06/25.
//

import SwiftUI


struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}




struct AlertContext {
    static let invalidData = AlertItem(title: Text("Server Error"),
                                              message: Text("Data received from server was invalid, Please contract the server administrator."),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                              message: Text("Invalid response from the server, Please contract the server administrator."),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                              message: Text("Issue Connecting to server, Please contract the server administrator."),
                                              dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                              message: Text("Enable to complete request at this moment"),
                                              dismissButton: .default(Text("OK")))
    
    
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                              message: Text("Ensure that all fields are complete"),
                                              dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                              message: Text("Enter valid email address"),
                                              dismissButton: .default(Text("OK")))
}
