//
//  Person.swift
//  EnvironmentObjectChallenge
//
//  Created by Jeffrey Sweeney on 10/18/21.
//

import Foundation

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var address: String
    var company: String
    var yearsOfExperience: Int
}
