//
//  PeopleView.swift
//  EnvironmentObjectChallenge
//
//  Created by Jeffrey Sweeney on 10/18/21.
//

import SwiftUI

struct PeopleView: View {
    @EnvironmentObject var personModel: PersonModel
    
    var body: some View {
        VStack {
            ForEach(personModel.people) { person in
                personModel.displayPerson(p: person)
            }
        }
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
