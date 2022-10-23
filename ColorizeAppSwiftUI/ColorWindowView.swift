//
//  ColorWindowView.swift
//  ColorizeAppSwiftUI
//
//  Created by roman Khilchenko on 21.10.2022.
//

import SwiftUI

struct ColorWindowView: View {
    
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    
    var body: some View {
        Color(red: redColor / 255, green: greenColor / 255, blue: blueColor / 255)
            .frame(width: 300, height: 150)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(.white, lineWidth: 4))
    }
}

struct ColorWindowView_Previews: PreviewProvider {
    static var previews: some View {
        ColorWindowView(redColor: 100, greenColor: 100, blueColor: 100)
    }
}
