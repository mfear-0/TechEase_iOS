//
//  SettingsScreen.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/20/21.
//  Modified by Arica Conrad on 4/30/21 and 5/1/21.
//

/*
 
 Arica: I cannot seem to get everything to go to the top of the screen. This seems to be a common issue, such as on the Homepage screen. I think it has to do with the NavigationView... I did not account for that.
 
 FYI: THE BUTTONS DO NOT WORK!
 
 @Natalman, if you could please hook up the button navigation, I would greatly appreciate that.
 
 @Natalman, if you need your code as a reference, I left it commented out at the bottom of this file. I didn't want to delete it in case you needed it to look back to. If you in fact don't need the code, feel free to delete it. I left comments saying where your code starts and ends.
 
 */

import SwiftUI

struct SettingsScreen: View {
    var body: some View {
        
        NavigationView {
            
            VStack() {
                
                /*
                 
                 Arica: This is the placeholder title text. This can be removed when we have a top navigation menu.
                 
                 */
                
                Text("Settings")
                   .font(.largeTitle)
                   .fontWeight(.regular)
                   .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                   .foregroundColor(Color("Black"))
                   .padding()
                   .border(/*@START_MENU_TOKEN@*/Color("DarkGreen")/*@END_MENU_TOKEN@*/, width: 2)
                   .background(Color("LightGreen"))
                   .padding()
                                
                
                /*
                 
                 Arica: This is the instructional text that describes what the user can do on this screen.
                 
                 */
                
                
                Text("Tap a button to see accessibility options or notifications.")
                    .font(.title3)
                    .foregroundColor(Color("Black"))
                    .multilineTextAlignment(.leading)
                    .padding(10)
                
            
                
                /*
                 
                 Arica: Even though we only have two buttons, I put everything in a ScrollView for good practice. I think this is what we will need to do from here on out.
                 
                 @Natalman, can you hook up the navigation for these buttons, please? For some reason, it isn't working for me... Is it the ScrollView? Is it the Button? Is it something else entirely? Your SettingsScreen file uses an overlay instead of a button for the Accessibility navigation. Is that why?
                 
                 The two screens you need are Accessibility.swift and NotificationsScreen.swift.
                 
                 */
                NavigationLink(destination: Accessibility()) {
                    CustomButton(icon: "figure.stand", label: "Accessibility")
                    .padding()
                    
                }
                    
                NavigationLink(destination: NotificationsScreen()) {
                    CustomButton(icon: "bell", label: "Notifications")
                        .padding()
                }
                
                Spacer()
                            
                
                /*
                Arica: The following is sample ZStack code for the Help button.
                */
                
                /*
                ZStack {
                    HStack {
                        HStack {
                            Image(systemName: "hand.draw")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .padding(10)
                            Text("Swipe up to see more tutorials.")
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                        }
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Text("Help")
                                .padding()
                        }
                        .background(Color("LightYellow"))
                        .buttonStyle(HelpButton())
                        .padding(10)
                        
                    }
                }
                */
            }
            .navigationBarTitle("", displayMode: .inline)
            
        }
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
