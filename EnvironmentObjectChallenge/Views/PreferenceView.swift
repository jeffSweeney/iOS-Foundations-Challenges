//
//  PreferenceView.swift
//  EnvironmentObjectChallenge
//
//  Created by Jeffrey Sweeney on 10/18/21.
//

import SwiftUI

struct PreferenceView: View {
    @EnvironmentObject var personModel: PersonModel
    
    var body: some View {
        GeometryReader { geo in
            // Have the VStack consume 1/2 of the width and 3/4 of
            // the height of the device's screen.
            let toggleMenuWidth = geo.size.width/2
            let toggleMenuHeight = geo.size.height/4*3
            
            let distanceFromLeft = geo.size.width/4
            let distanceFromTop = geo.size.height/8
            
            VStack {
                Toggle("Show Name", isOn: $personModel.showName)
                Toggle("Show Address", isOn: $personModel.showAddress)
                Toggle("Show Company", isOn: $personModel.showCompany)
                Toggle("Show Years of Experience", isOn: $personModel.showYearsOfExperience)
            }
                .toggleStyle(.switch)
                .frame(width: toggleMenuWidth, height: toggleMenuHeight, alignment: .center)
                .padding(.leading, distanceFromLeft)
                .padding(.top, distanceFromTop)
        }
    }
}

struct PreferenceView_Previews: PreviewProvider {
    static var previews: some View {
        PreferenceView()
    }
}
