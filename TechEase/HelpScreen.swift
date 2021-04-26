//
//  HelpScreen.swift
//  TechEase
//
//  Created by Hans Mandt on 4/21/21.
//

import SwiftUI

struct HelpScreen: View {
    var body: some View {
        VStack (alignment: .center) {
            Text("Phone Controls")
                .font(.system(size: 20.0))
                .bold()
                .foregroundColor(.blue)
            Text("Tap the screen to press buttons. Swipe your finger up to scroll the page down, and swipe down to scroll the page down.")
                .font(.system(size: 20.0))
                .padding(.top, 3)
                .padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
            
            Text("Navigating this App")
                .font(.system(size: 20.0))
                .bold()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Text("The Home button will take you back to the first screen of this app. The back button will that you to the previous screen.")
                .font(.system(size: 20.0))
                .padding(.top, 3)
                .padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
            
            Text("Tutorials")
                .font(.system(size: 20.0))
                .bold()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Text("Tutorials are grouped into categories. Selecting a tutorial category button will take you to a list of tutorials within that category. You can choose from that list by tapping on one of the buttons to access that specific tutorial.")
                .font(.system(size: 20.0))
                .padding(.top, 3)
                .padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                HStack {
                    Image(systemName: "phone")
                        .resizable()
                        .frame(width:32, height: 32)
                    Text("Contact Us")
                        .padding(.leading, 28.0)
                    Spacer()
                }
                .padding(.leading, 42.0)
                
            }
                .padding([.leading, .bottom, .trailing], 2.0)
                .buttonStyle(RoundedButton())
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                HStack {
                    Image(systemName: "mail")
                        .resizable()
                        .frame(width:32, height: 32)
                    Text("Email Us")
                        .padding(.leading, 28.0)
                    Spacer()
                }
                .padding(.leading, 42.0)
                
            }
                .padding([.leading, .bottom, .trailing], 2.0)
                .buttonStyle(RoundedButton())
            Spacer()
        }
    }
}

struct HelpButton: ButtonStyle {
    func makeBody (configuration: Self.Configuration) -> some View {
        return configuration
            .label
            .padding()
            .background(Circle().stroke(Color("Black"), lineWidth: 2).background(Color("Yellow")))
            .foregroundColor(.black)
    }
}


struct HelpScreen_Previews:
    PreviewProvider {
        static var previews: some View {
            HelpScreen()
        }
    }
