//
//  PickerView.swift
//  PickerChallenge
//
//  Created by Jeffrey Sweeney on 10/19/21.
//

import SwiftUI

struct PickerView: View {
    let locations = [
        "Chicago",
        "Dallas",
        "Houston",
        "Los Angeles",
        "New York City",
        "Philadelphia",
        "Phoenix",
        "San Diego",
        "San Jose"
    ]
    
    let orders = [
        "Sweet potato fries",
        "Nachos",
        "Grilled salmon salad",
        "Pad thai",
        "Fish tacos",
        "Turkey burger",
        "Poutine",
        "Potato leek soup"
    ]
    
    let times = [
        "5 pm",
        "6 pm",
        "7 pm",
        "8 pm",
        "9 pm"
    ]
    
    // Hardcoding state properties for simplicity - this is about UI not dynamic data
    @State var locationsTag = 0  // Visual differences are independent on selection
    @State var ordersTag = 4     // Puts wheel several items in for nice starting look
    @State var timesTag = 2      // Starting in the middle of the options
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Ottimo Ristorante")
                .font(.largeTitle)
                .bold()
            
            Spacer()
            
            HStack {
                // Supposed to be able to put this in the empty quotes below. From
                // my research, there appears to be a bug on the Apple side.
                // Using the Text view before the picker to compensate for now.
                // TODO: Factor this back into the Picker when bug resolved
                Text("Location: ")
                Picker("", selection: $locationsTag) {
                    ForEach(0 ..< locations.count) { index in
                        Text(locations[index]).tag(index)
                    }
                }
                .pickerStyle(MenuPickerStyle())
            }
            
            Spacer()
            
            VStack {
                Text("Order:")
                    .font(.title)
                
                Picker("Order:", selection: $ordersTag) {
                    ForEach(0 ..< orders.count) { index in
                        Text(orders[index]).tag(index)
                    }
                }
                .pickerStyle(WheelPickerStyle())
            }
            
            Spacer()
            
            VStack {
                Text("Pickup time:")
                    .font(.title3)
                    
                Picker("Pickup time:", selection: $timesTag) {
                    ForEach(0 ..< times.count) { index in
                        Text(times[index]).tag(index)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            Button("Pick for me!") {
                locationsTag = Int.random(in: 0 ..< locations.count)
                ordersTag = Int.random(in: 0 ..< orders.count)
                timesTag = Int.random(in: 0 ..< times.count)
            }
            .padding(.vertical, 30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
