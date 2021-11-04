//
//  PersonModel.swift
//  EnvironmentObjectChallenge
//
//  Created by Jeffrey Sweeney on 10/18/21.
//

import Foundation
import SwiftUI

class PersonModel: ObservableObject {
    @Published var people: [Person]
    @Published var showName = true
    @Published var showAddress = true
    @Published var showCompany = true
    @Published var showYearsOfExperience = true
    
    init() {
        // Not really an exercise in reading mock/external data. Will
        // hardcode the data as a result
        people = [
            Person(
                name: "Inigo Montoya",
                address: "555 Youkilledmyfather Street",
                company: "CWC",
                yearsOfExperience: 35),
            Person(
                name: "Edna Mode",
                address: "123 Nocape Lane",
                company: "CWC",
                yearsOfExperience: 177),
            Person(
                name: "Travis Bickle",
                address: "99 Youtalkingtome Road",
                company: "CWC",
                yearsOfExperience: 99),
            Person(
                name: "Walter Sobchak",
                address: "8 Dude Place",
                company: "CWC",
                yearsOfExperience: 23),
            Person(
                name: "Julius Winnfield", 
                address: "25 Ezekiel Ave", 
                company: "CWC", 
                yearsOfExperience: 17)
        ]
    }
    
    // Business logic function to display desired info of a person for PeopleView
    func displayPerson(p: Person) -> some View {
        VStack (alignment: .leading) {
            if showName {
                Text("Name: \(p.name)")
            }
            
            if showAddress {
                Text("Address: \(p.address)")
            }
            
            if showCompany {
                Text("Company: \(p.company)")
            }
            
            if showYearsOfExperience {
                Text("Years of Experience: \(p.yearsOfExperience)")
            }
            
            Divider()
        }
        .padding(.leading, 15)
    }
}
