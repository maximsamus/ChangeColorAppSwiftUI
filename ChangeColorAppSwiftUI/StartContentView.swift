//
//  StartContentView.swift
//  ChangeColorAppSwiftUI
//
//  Created by Максим Самусь on 16.05.2022.
//

import SwiftUI

struct StartContentView: View {
    @State private var color: Color = .blue
    @State private var redSliderValue = 38.0
    @State private var greenSliderValue = 99.0
    @State private var blueSliderValue = 222.0
    @State private var redTextFieldValue = "38"
    @State private var greenTextFieldValue = "99"
    @State private var blueTextFieldValue = "222"
    
    var body: some View {
        VStack {
            //            ZStack {
            //                Color(.blue)
            //                    .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(color)
                .frame(width: 300, height: 200)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 8))
            
                .padding(EdgeInsets(top: 20, leading: 16, bottom: 20, trailing: 16))
            
            ColorSliderView(value: $redSliderValue, sliderColor: .red);          ColorSliderView(value: $greenSliderValue, sliderColor: .green);
            ColorSliderView(value: $blueSliderValue,  sliderColor: .blue)
            
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartContentView()
    }
}

struct ColorSliderView: View {
    @Binding var value: Double
    let sliderColor: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(sliderColor)
            TextField("", value: $value, formatter: NumberFormatter())
                .frame(width: 40, height: 40)
                
        }
        .padding(.horizontal)
    }
}
