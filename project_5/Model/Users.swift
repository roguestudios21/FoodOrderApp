//
//  Users.swift
//  project_5
//
//  Created by Atharv Choughule on 11/06/25.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var extraCondiments = false
}
