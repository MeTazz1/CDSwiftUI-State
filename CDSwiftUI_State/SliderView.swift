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
    
    // The @Binding keyword reuse the two way binding between the State property
    // and the view it's used by. This @Binding actually refers to the @State property wrapper
    // that we created in the ContentView. You will access to the same property
    // that SwiftUI is managing for you
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
