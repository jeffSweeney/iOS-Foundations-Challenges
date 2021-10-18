//
//  ContentView.swift
//  EnvironmentObjectChallenge
//
//  Created by Jeffrey Sweeney on 10/18/21.
//

import SwiftUI

struct ContentView: View {
    // The shared lone instance of the View Model
    private let personModel = PersonModel()
    
    // Tagging to help with a default view
    @State private var indexTag = 1
    
    var body: some View {
        TabView(selection: $indexTag) {
            // Left tab view should display the people (and be default)
            PeopleView()
                .tabItem {
                    Image(systemName: "person.2")
                }.tag(1)
            
            // Right tab should allow you to toggle the preferences of what to display
            PreferenceView()
                .tabItem {
                    Image(systemName: "gearshape")
                }.tag(2)
        }.environmentObject(personModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
