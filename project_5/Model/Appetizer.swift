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
}

