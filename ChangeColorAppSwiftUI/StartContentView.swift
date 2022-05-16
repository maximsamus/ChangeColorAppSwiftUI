//
//  StartContentView.swift
//  ChangeColorAppSwiftUI
//
//  Created by Максим Самусь on 16.05.2022.
//

import SwiftUI

struct StartContentView: View {
    @State private var redSliderValue = 38.0
    @State private var greenSliderValue = 99.0
    @State private var blueSliderValue = 222.0
    
    var body: some View {
        ZStack {
            Color(.blue)
                .ignoresSafeArea()
            VStack {
                ColorView(
                    red: redSliderValue,
                    green: greenSliderValue,
                    blue: blueSliderValue
                )
                
                ColorSliderView(value: $redSliderValue, color: .red);
                ColorSliderView(value: $greenSliderValue, color: .green);
                ColorSliderView(value: $blueSliderValue, color: .blue)
                
                Spacer()
            }
        }
    }
}

struct ColorSliderView: View {
    
    @Binding var value: Double
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .foregroundColor(.white)
                .font(.headline)
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
            TextField("", value: $value, formatter: NumberFormatter())
                .frame(width: 50, height: 50)
                .multilineTextAlignment(.trailing)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.headline)
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartContentView()
    }
}
