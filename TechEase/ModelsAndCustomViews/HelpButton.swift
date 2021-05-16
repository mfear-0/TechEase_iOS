//
//  HelpButton.swift
//  TechEase
//
//  Created by Arica Conrad on 5/15/21.
//

/*

Arica: This file contains the design code for the Help Button. This way, it is easily accessible. You still need to set up the icon for the button within each file, though. It might be possible to have all the code here, I'm not sure. The Accessibility.swift and the HelpScreen.swift files have the proper code.
 
*/

import SwiftUI

struct HelpButton: ButtonStyle {
    func makeBody (configuration: Self.Configuration) -> some View {
        return configuration
            .label
            .frame(width: 100, height: 100)
            .background(Color("LightYellow"))
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .foregroundColor(.black)
            .overlay(Circle().stroke(Color("DarkYellow"), lineWidth: 2))
            .padding()
    }
}
