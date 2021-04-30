//
//  CustomButton.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/30/21.
//  @Arica, You might want to edit this if you want to customize the button.

/**
 This is a custom button of a sort. it will be used across the application inside NavigatioView to transition between screens.
 */

import SwiftUI

struct CustomButton: View {
    var icon: String
    var label: String
    var body: some View {
        HStack{
            Image(systemName: icon)
                .resizable()
                .frame(width:28, height: 48)
            Text(label)
                .padding(.all, 28.0)
        }
        .font(.system(size: 24.0))
        .foregroundColor(.black)
        .padding(.horizontal, 42.0)
        
        .background(Color(red: 177/255, green: 255/255, blue: 156/255))
        .overlay(
            RoundedRectangle(cornerRadius: 5) .stroke(Color.black, lineWidth: 3.5))
        
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(icon: "figure.stand", label: "Accessibility")
    }
}
