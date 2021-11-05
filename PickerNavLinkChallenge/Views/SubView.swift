//
//  SubView.swift
//  PickerNavLinkChallenge
//
//  Created by Jeffrey Sweeney on 11/5/21.
//

import SwiftUI

struct SubView: View {
    var displayView: Int
    @Binding var selectedIndex: Int?
    
    var body: some View {
        VStack {
            Text("I am view \(displayView)")
            
            Button(action: {selectedIndex = nil}) {
                Text("Go back")
            }
        }
        .navigationBarHidden(true)
    }
}
