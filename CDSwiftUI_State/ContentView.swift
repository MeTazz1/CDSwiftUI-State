//
//  ContentView.swift
//  CDSwiftUI_State
//
//  Created by Christophe Dlc on 2/28/20.
//  Copyright © 2020 Christophe Dlc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var cpuRed: Double = Double.random(in: 0 ... 255)
    @State private var cpuGreen: Double = Double.random(in: 0 ... 255)
    @State private var cpuBlue: Double = Double.random(in: 0 ... 255)
    
    @State private var userRed: Double = 0
    @State private var userGreen: Double = 0
    @State private var userBlue: Double = 0
    
    var body: some View {
        VStack {
            HStack {
                // CPU Rectangle
                Rectangle()
                    .fill(Color.init(red: cpuRed/255, green: cpuGreen/255, blue: cpuBlue/255))
                // User Rectangle
                Rectangle()
                    .fill(Color.init(red: userRed/255, green: userGreen/255, blue: userBlue/255))
            }
            .frame(height: 400)
            
            VStack(alignment: .leading) {
                
                // In order to use a State property
                // You need to add a $ before calling its name
                // meaning that you create a Two-Way Binding
                // between the property and the UI element using it, the SliderView.Slider
                // which is now able to modify the State property
                
                // Here, we are creating a reusable smaller view
                // Because we are passing @State property to it, we need to bind those
                // property inside the reusable view, using the @Binding wrapper
                SliderView(name: "Red", value: $userRed)
                
                
                SliderView(name: "Green", value: $userGreen)
                
                
                SliderView(name: "Blue", value: $userBlue)
                
                
                // Creating a button that will shuffle new colors
                // everytime you press it.
                // Because those properties are State properties,
                // the action of changing their value will invalidate the current UI
                // and rebuild it with the new values
                Button(action: {
                    // Shuffle numbers again
                    self.cpuRed = Double.random(in: 0 ... 255)
                    self.cpuGreen = Double.random(in: 0 ... 255)
                    self.cpuBlue = Double.random(in: 0 ... 255)
                }) {
                    Text("Shuffle new Color")
                }
                .padding()
                Spacer()
            }
            .padding()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
