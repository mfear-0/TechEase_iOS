//
//  RoundedButton.swift
//  TechEase
//
//  Created by Natalman Nahm on 5/1/21.
//

import Foundation
import SwiftUI

struct RoundedButton: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        return configuration
            /*
            Arica: I modified this section to make the buttons look like our high-fidelity prototype. That way, whenever RoundedButton is called, this styling will be used, keeping the design consistent.
            */
            .label
            .padding()
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(RoundedRectangle(cornerRadius: 10).stroke(Color("DarkBlue"), lineWidth: 2).background(Color("LightBlue").cornerRadius(10)))
            .foregroundColor(.black)
    }
}
