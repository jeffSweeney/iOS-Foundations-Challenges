//
//  AVKitChallengeModel.swift
//  AVKitChallenge
//
//  Created by Jeffrey Sweeney on 11/2/21.
//

import Foundation
import LoremSwiftum

class AVKitChallengeModel: ObservableObject {
    @Published var urlPath: String
    @Published var description: String
    
    init() {
        let path = "https://codewithchris.github.io/learningJSON/"
        let video = "Learn%20Swift%20for%20Beginners%20-%20Ep%209%20-%20Classes%20Part%201-ZDzdz52tex4.mp4"
        
        urlPath = path+video
        description = Lorem.paragraphs(5)
    }
}
