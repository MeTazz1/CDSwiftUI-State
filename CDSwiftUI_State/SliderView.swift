//
//  SliderView.swift
//  CDSwiftUI_State
//
//  Created by Christophe Dlc on 2/28/20.
//  Copyright © 2020 Christophe Dlc. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    var name: String
    @Binding var value: Double
    
    var body: some View {
        VStack {
            Text("\(name): " + String(value))
            Slider(value: $value, in: 0 ... 255, step: 1)
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(name: "Some color", value: .constant(0))
    }
}
