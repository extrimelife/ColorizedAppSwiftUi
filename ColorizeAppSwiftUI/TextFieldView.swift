//
//  TextFieldView.swift
//  ColorizeAppSwiftUI
//
//  Created by roman Khilchenko on 23.10.2022.
//

import SwiftUI

struct TextFieldView: View {
    
    @Binding var text: String
    @Binding var value: Double
    
    var body: some View {
        TextField("", text: $text)
            .frame(width: 55, alignment: .trailing)
            .multilineTextAlignment(.trailing)
            .textFieldStyle(.roundedBorder)
            .keyboardType(.decimalPad)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(text: .constant("100"), value: .constant(100))
    }
}
