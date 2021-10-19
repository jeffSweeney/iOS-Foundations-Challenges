//
//  ContentView.swift
//  LazyStackChallenge
//
//  Created by Jeffrey Sweeney on 10/19/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            let rectangleWidth = geo.size.width/8*7
            
            ScrollView {
                LazyVStack {
                    ForEach(1...100, id: \.self) { index in
                        buildRectagle(i: index, w: rectangleWidth)
                    }
                }
            }
        }
    }
    
    private func buildRectagle(i: Int, w: CGFloat) -> some View {
        // This pow index will make a symetric "list" of rectangles:
        // i = 1 rectangle == i = 100 rectangle
        // i = 2 rectangle == i = 99 rectangle
        // i = 49 rectangle == i = 52 rectangle
        // i = 50 rectangle == i = 51 rectangle
        let powIndex = i <= 50 ? i : 50 - (i - 50) + 1
        
        return Rectangle()
            .foregroundColor(.orange)
            .frame(width: w, height: pow(1.1, CGFloat(powIndex)), alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
