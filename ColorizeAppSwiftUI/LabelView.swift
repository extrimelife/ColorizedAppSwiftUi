//
//  LabelView.swift
//  ColorizeAppSwiftUI
//
//  Created by roman Khilchenko on 21.10.2022.
//

import SwiftUI

struct LabelView: View {
    
    var value: Double
    
    var body: some View {
        Text("\(lroundl(Float80(value)))")
            .frame(width: 35, alignment: .leading)
            .foregroundColor(.white)
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(value: 128)
    }
}
