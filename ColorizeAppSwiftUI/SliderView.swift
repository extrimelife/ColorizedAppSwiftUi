//
//  SliderView.swift
//  ColorizeAppSwiftUI
//
//  Created by roman Khilchenko on 21.10.2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var value: Double
    @State private var text = ""
    let color: Color
    
    var body: some View {
        HStack() {
            LabelView(value: value)
            Slider(value: $value, in: 0...250)
                .frame(width: 250)
                .accentColor(color)
                .onChange(of: value) { newValue in
                    text = "\(lroundl(Float80(newValue)))"
                }
            TextFieldView(text: $text, value: $value)
        }
        
        .onAppear() {
            text = "\(lroundl(Float80(value)))"
        }
    }
}
struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(100), color: .red)
    }
}
