//
//  CardSwiperView.swift
//  SwipeTabViewChallenge
//
//  Created by Jeffrey Sweeney on 10/19/21.
//

import SwiftUI

struct CardSwiperView: View {
    var body: some View {
        GeometryReader { geo in
            TabView {
                ForEach (1 ... 50, id: \.self) { num in
                    ZStack {
                        Rectangle()
                            .foregroundColor(randomColor())
                            .cornerRadius(20)
                            .shadow(color: .gray, radius: 10)
                        .frame(width: geo.size.width/8*7, height: geo.size.height/8*7, alignment: .center)
                        
                        Image(systemName: "\(num).circle")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geo.size.width/4*3, height: geo.size.width/2, alignment: .center)
                    }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
    
    private func randomColor() -> Color {
        let r = Double.random(in: 0...1)
        let g = Double.random(in: 0...1)
        let b = Double.random(in: 0...1)
        
        return Color(.sRGB, red: r, green: g, blue: b)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CardSwiperView()
    }
}
