//
//  ContentView.swift
//  AVKitChallenge
//
//  Created by Jeffrey Sweeney on 11/2/21.
//

import SwiftUI
import AVKit

struct AVKitChallengeView: View {
    @EnvironmentObject var model: AVKitChallengeModel
    
    var body: some View {
        VStack{
            if let url = URL(string: model.urlPath) {
                VideoPlayer(player: AVPlayer(url: url))
                    .aspectRatio(CGSize(width: 200, height: 125), contentMode: .fit)
            } else {
                Text("Can't load video at \(model.urlPath)")
            }
            
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 20) {
                    Text("Description")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text(model.description)
                }
            }
            .padding(.horizontal)
            .padding(.top, 5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AVKitChallengeView()
            .environmentObject(AVKitChallengeModel())
    }
}
