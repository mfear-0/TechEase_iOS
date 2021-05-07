//
//  HelpScreen.swift
//  TechEase
//
//  Created by Hans Mandt on 4/21/21.
//  Modified by Arica Conrad on 5/6/21.
//

import SwiftUI

struct HelpScreen: View {
    var body: some View {
        
        VStack {
            /*

             Arica: This is the placeholder title text. This can be removed when we have a top navigation menu.
             
             */
            
            Text("Help")
               .font(.largeTitle)
               .fontWeight(.regular)
               .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
               .foregroundColor(Color("Black"))
               .padding()
               .border(Color("DarkYellow"), width: 2)
               .background(Color("LightYellow"))
               .padding()
            
            /*
            
            Arica: The ScrollView encompasses the text, not the buttons. This allows the buttons to stay on the screen all the time. If we want the buttons to not stay on the screen, we can move the buttons back within the ScrollView.
             
            */
            
            ScrollView {
                
                /*
                
                Arica: I put each title in an HStack, as that was the only way I was able to move it to the far left. For some reason, setting the multilineTextAlignment property to be leading didn't move the title. It may be because it is only one line, I'm not sure.
                 
                */
                
                HStack {
                    Text("Phone Controls")
                        .font(.title)
                        .foregroundColor(Color("DarkBlue"))
                    // Arica: The Spacer pushes the title text to the left.
                    Spacer()
                }
                .padding(.leading)
                    
                
                Text("Tap the screen to press buttons. Swipe your finger up to scroll the page down, and swipe down to scroll the page up.")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding()

    
                HStack {
                    Text("Navigating This App")
                        .font(.title)
                        .foregroundColor(Color("DarkBlue"))
                    // Arica: The Spacer pushes the title text to the left.
                    Spacer()
                }
                .padding(.leading)

                
                Text("The Home button will take you back to the first screen (also known as the Home Screen) of this app. The back button will take you to the previous screen you were on.")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                
                HStack {
                    Text("Tutorials")
                        .font(.title)
                        .foregroundColor(Color("DarkBlue"))
                    // Arica: The Spacer pushes the title text to the left.
                    Spacer()
                }
                .padding(.leading)
                    
                
                Text("Tutorials are grouped into categories. Selecting a tutorial category button will take you to a list of tutorials within that category. You can choose from the category list by tapping on one of the buttons to access that specific tutorial.")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding()
            }
            
            
            /*
            
            Arica: As mentioned above, the buttons are outside the ScrollView. If we don't want the buttons to always be on the screen, the buttons' code can be moved back inside the ScrollView.
             
            */
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                HStack {
                    Image(systemName: "phone")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                    Spacer()
                    Spacer()
                    Text("Contact Us")
                        .font(.title2)
                        .foregroundColor(Color("Black"))
                    Spacer()
                    Spacer()
                    Spacer()
                }
            }
                .padding()
                .buttonStyle(RoundedButton())
            
            
            Button(action: {}) {
                HStack {
                    Image(systemName: "envelope")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                    Spacer()
                    Spacer()
                    Text("Email Us")
                        .font(.title2)
                        .foregroundColor(Color("Black"))
                    Spacer()
                    Spacer()
                    Spacer()
                }
            }
            .padding()
            .buttonStyle(RoundedButton())
        }
    }
}

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


struct HelpScreen_Previews:
    PreviewProvider {
        static var previews: some View {
            HelpScreen()
        }
    }
