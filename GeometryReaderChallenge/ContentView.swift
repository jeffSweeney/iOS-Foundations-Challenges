//
//  ContentView.swift
//  GeometryReaderChallenge
//
//  Created by Jeffrey Sweeney on 10/16/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // Adding spacin: 0 allows the rectangles in each half to touch without gap
        VStack (spacing: 0) {
            // MARK: GeometryReader of the TOP HALF of the screen.
            GeometryReader { geo in
                // MARK: Green rectangle
                let green = Color.green
                Rectangle()
                    .foregroundColor(green)
                    .onTapGesture {
                        printDimension(c: green, w: geo.size.width, h: geo.size.height)
                    }

                // MARK: Red rectangle
                let red = Color.red
                
                // Red's width is 2/3 the width of this geo
                let redWidth = geo.size.width/3*2
                
                // Red's height is 1/4 the height of this geo
                let redHeight = geo.size.height/4
                
                // To center, each horizontal side should SPLIT the geo width - red width
                // difference for the padding
                let redWidthPadding = (geo.size.width - redWidth) / 2
                
                // To center, each vertical side should SPLIT the geo height - red height
                // difference for the padding
                let redHeightPadding = (geo.size.height - redHeight) / 2
                
                Rectangle()
                    .foregroundColor(red)
                    .frame(width: redWidth, height: redHeight)
                    // Since from top left, equivalent to padding([.horizonta], redWidthPadding)
                    .padding(.leading, redWidthPadding)
                    // Since from top left, equivalent to padding([.vertical], redHeightPadding)
                    .padding(.top, redHeightPadding)
                    .onTapGesture {
                        printDimension(c: red, w: redWidth, h: redHeight)
                    }
            }
            
            // MARK: GeometryReader of the BOTTOM HALF of the screen.
            GeometryReader { geo in
                // Set the dimensions of each rectangle
                let rectangleWidth = geo.size.width/2
                let rectangleHeight = geo.size.height
                
                // MARK: Purple rectangle
                let purple = Color.purple
                Rectangle()
                    .foregroundColor(purple)
                    .frame(width: rectangleWidth, height: rectangleHeight)
                    .onTapGesture {
                        printDimension(c: purple, w: rectangleWidth, h: rectangleHeight)
                    }
                
                // MARK: Orange rectangle
                let orange = Color.orange
                Rectangle()
                    .foregroundColor(orange)
                    .frame(width: rectangleWidth, height: rectangleHeight)
                    // "Push" this rectangle to sit next to the purple one
                    .padding(.leading, rectangleWidth)
                    .onTapGesture {
                        printDimension(c: orange, w: rectangleWidth, h: rectangleHeight)
                    }
            }
        }.ignoresSafeArea()
    }
    
    // Helper function to print the details of a rectagle, rather than constantly duplicating
    // the code
    private func printDimension(c color: Color, w width: CGFloat, h height: CGFloat) {
        print("The \(color) rectangle has a width of \(width) and a height of \(height)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
