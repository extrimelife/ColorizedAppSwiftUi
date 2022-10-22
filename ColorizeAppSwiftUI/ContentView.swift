//
//  ContentView.swift
//  ColorizeAppSwiftUI
//
//  Created by roman Khilchenko on 21.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            VStack(){
                ColorWindowView(redColor: red, greenColor: green, blueColor: blue)
                Spacer()
                VStack {
                    SliderView(value: $red, color: .red)
                    SliderView(value: $green, color: .green)
                    SliderView(value: $blue, color: .blue)
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
