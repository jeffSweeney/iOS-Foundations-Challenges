//
//  HomeView.swift
//  RandomFactChallenge_iOSNetworking
//
//  Created by Jeffrey Sweeney on 11/13/21.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var randomFactModel: RandomFactModel
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(randomFactModel.randomFact)
                .padding()
                .frame(height: 300)
            
            Button(action: {randomFactModel.newRandomFact()}) {
                Text("Get a new fact!")
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RandomFactModel())
    }
}
