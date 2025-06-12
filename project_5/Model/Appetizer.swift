//
//  Appetizer.swift
//  project_5
//
//  Created by Atharv Choughule on 10/06/25.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let carbs: Int
    let calories: Int
    let protein: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
    
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 69,
                                           name: "chicken 69",
                                           description: "it's juicy",
                                           price: 69.69,
                                           imageURL: "",
                                           carbs: 69,
                                           calories: 69,
                                           protein: 69)

    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 001,
                                           name: "chicken 1",
                                           description: "it's juicy",
                                           price: 69.69,
                                           imageURL: "",
                                           carbs: 69,
                                           calories: 69,
                                           protein: 69)
    
    static let orderItemTwo = Appetizer(id: 002,
                                           name: "chicken 2",
                                           description: "it's juicy",
                                           price: 69.69,
                                           imageURL: "",
                                           carbs: 69,
                                           calories: 69,
                                           protein: 69)
    
    static let orderItemThree = Appetizer(id: 003,
                                           name: "chicken 3",
                                           description: "it's juicy",
                                           price: 69.69,
                                           imageURL: "",
                                           carbs: 69,
                                           calories: 69,
                                           protein: 69)
    
    static let orderItem = [orderItemOne, orderItemTwo, orderItemThree]
}

