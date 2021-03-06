//
//  CustomButton.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/30/21.
//  @Arica, You might want to edit this if you want to customize the button.
//
//  Modified by Arica Conrad on 5/1/21.
//  Modified by Arica Conrad on 5/6/21.
//  Modified by Arica Conrad on 5/15/21.
//

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
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .foregroundColor(Color("Black"))
            Spacer()
            Spacer()
            Text(label)
                .font(.title2)
                .foregroundColor(Color("Black"))
            Spacer()
            Spacer()
            Spacer()
        }
        .padding()
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(RoundedRectangle(cornerRadius: 10).stroke(Color("DarkBlue"), lineWidth: 2).background(Color("LightBlue").cornerRadius(10)))
        .foregroundColor(Color("Black"))
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(icon: "figure.stand", label: "Accessibility")
    }
}
