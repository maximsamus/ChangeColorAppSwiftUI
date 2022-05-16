//
//  ColorView.swift
//  ChangeColorAppSwiftUI
//
//  Created by Максим Самусь on 16.05.2022.
//

import SwiftUI

struct ColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(Color(
                red: red / 255,
                green: green / 255,
                blue: blue / 255)
            )
            .frame(height: 200)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(
                Color.white,
                lineWidth: 5)
            )
            .padding(.horizontal)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 1, green: 1, blue: 1)
    }
}
