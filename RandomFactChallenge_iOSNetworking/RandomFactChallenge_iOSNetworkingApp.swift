//
//  RandomFactChallenge_iOSNetworkingApp.swift
//  RandomFactChallenge_iOSNetworking
//
//  Created by Jeffrey Sweeney on 11/13/21.
//

import SwiftUI

@main
struct RandomFactChallenge_iOSNetworkingApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(RandomFactModel())
        }
    }
}
