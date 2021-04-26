//
//  Accessibility.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/20/21.
//

import SwiftUI

struct Accessibility: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0.0){
            Text("Tap a button to customize your accessibility options")
                .multilineTextAlignment(.center)
                .font(.system(size: 20.0))
                .padding(.all, 24.0)
            
            Button(action: {}) {
                HStack{
                    Image(systemName: "hearingaid.ear")
                        .resizable()
                        .frame(width:28, height: 48)
                    Text("Text-To-Speech")
                        .padding(.leading, 28.0)
                    Spacer()
                }
                .padding(.leading, 42.0)
                
            }
                .padding([.leading, .bottom, .trailing], 28.0)
                .buttonStyle(RoundedButton())
            
            Button(action: {}) {
                HStack{
                    Image(systemName: "eye")
                        .resizable()
                        .frame(width:52, height: 38)
                    Text("Vision Options")
                        .padding(.leading, 28.0)
                    Spacer()
                }
                .padding(.leading, 42.0)
                
            }
                .padding([.leading, .bottom, .trailing], 28.0)
                .buttonStyle(RoundedButton())
            
            Button(action: {}) {
                HStack{
                    Image(systemName: "mic.fill")
                        .resizable()
                        .frame(width:32, height: 38)
                    Text("Voice Commands")
                        .padding(.leading, 28.0)
                    Spacer()
                }
                .padding(.leading, 42.0)
                
            }
                .padding([.leading, .bottom, .trailing], 28.0)
                .buttonStyle(RoundedButton())
            
            
            Spacer()
            Button(action: {}) {
                Text("Help")
                    .padding()
            }
            .buttonStyle(HelpButton())
        }
    }
}

struct Accessibility_Previews: PreviewProvider {
    static var previews: some View {
        Accessibility()
    }
}
