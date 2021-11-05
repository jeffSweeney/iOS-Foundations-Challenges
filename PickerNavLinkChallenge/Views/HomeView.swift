//
//  HomeView.swift
//  PickerNavLinkChallenge
//
//  Created by Jeffrey Sweeney on 11/5/21.
//

import SwiftUI

struct HomeView: View {
    // Arbitrarily selecting in the middle to start
    @State var currentSelection = 5
    // Link index - here on home screen when nil
    @State var linkIndex: Int?
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("Int Picker", selection: $currentSelection) {
                    ForEach(1...10, id: \.self) { index in
                        Text(String(index))
                    }
                }
                .pickerStyle(WheelPickerStyle())
                
                Button(action: {linkIndex = currentSelection}) {
                    Text("Go to view \(currentSelection)")
                }
                
                NavigationLink(
                    destination: SubView(displayView: currentSelection, selectedIndex:$linkIndex),
                    tag: currentSelection,
                    selection: $linkIndex,
                    label: {}
                )
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
