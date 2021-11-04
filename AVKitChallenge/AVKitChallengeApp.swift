//
//  AVKitChallengeApp.swift
//  AVKitChallenge
//
//  Created by Jeffrey Sweeney on 11/2/21.
//

import SwiftUI

@main
struct AVKitChallengeApp: App {
    var body: some Scene {
        WindowGroup {
            AVKitChallengeView()
                .environmentObject(AVKitChallengeModel())
        }
    }
}
