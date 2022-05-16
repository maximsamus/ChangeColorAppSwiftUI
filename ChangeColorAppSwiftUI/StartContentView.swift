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

    var body: some View {
        VStack {
            //            ZStack {
            //                Color(.blue)
            //                    .ignoresSafeArea()
            ColorView(
                red: redSliderValue,
                green: greenSliderValue,
                blue: blueSliderValue
            )

            ColorSliderView(value: $redSliderValue, sliderColor: .red);  
            ColorSliderView(value: $greenSliderValue, sliderColor: .green);
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
            Slider(value: $value, in: 0...255)
                .accentColor(sliderColor)
            TextField("", value: $value, formatter: NumberFormatter())
                .frame(width: 40, height: 40)
        }
        .padding(.horizontal)
    }
}
