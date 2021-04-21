//
//  SettingsScreen.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/20/21.
//

import SwiftUI

struct SettingsScreen: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .center, spacing: 0.0){
                Text("Tap a button to see accessibility options or notifications")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 20.0))
                    .padding(.all, 24.0)
                
                NavigationLink(destination: Accessibility()){
                    
                    HStack{
                        Image(systemName: "figure.stand")
                            .resizable()
                            .frame(width:28, height: 48)
                        Text("Accessibility")
                            .padding(.all, 28.0)
                    }
                    .font(.system(size: 24.0))
                    .foregroundColor(.black)
                    .padding(.horizontal, 42.0)
                    
                    .background(Color(red: 177/255, green: 255/255, blue: 156/255))
                    .overlay(
                        RoundedRectangle(cornerRadius: 5) .stroke(Color.black, lineWidth: 3.5))
                    
                }
                .padding(.bottom)
                
                
                Button(action: {}) {
                    HStack{
                        Image(systemName: "bell")
                            .resizable()
                            .frame(width:38, height: 38)
                        Text("Notification")
                            .padding(.leading, 28.0)
                        Spacer()
                    }
                    .padding(.leading, 42.0)
                    
                }
                    .padding([.leading, .bottom, .trailing], 28.0)
                    .buttonStyle(RoundedButton())
                
                
                Spacer()
            }
        }
        
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
