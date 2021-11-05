//
//  MyWebView.swift
//  UIKitInterpolationChallenge
//
//  Created by Jeffrey Sweeney on 11/4/21.
//

import SwiftUI
import WebKit

struct MyWebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let myWebView = WKWebView()
        
        if let url = URL(string: "https://codewithchris.com/") {
            let request = URLRequest(url: url)
            myWebView.load(request)
        }
        
        return myWebView
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        // Update code
    }
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView()
    }
}
