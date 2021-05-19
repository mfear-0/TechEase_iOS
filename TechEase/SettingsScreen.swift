//
//  SettingsScreen.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/20/21.
//  Modified by Arica Conrad on 4/30/21 and 5/1/21.
//  Modified by Arica Conrad on 5/15/21.
//

/*
 
 Arica:
 
 @Natalman, if you need your code as a reference, I left it commented out at the bottom of this file. I didn't want to delete it in case you needed it to look back to. If you in fact don't need the code, feel free to delete it. I left comments saying where your code starts and ends.
 
 */

import SwiftUI

struct SettingsScreen: View {
    @EnvironmentObject var appState: AppState
    var body: some View {

            VStack() {
            
                /*
                 
                 Arica: This is the instructional text that describes what the user can do on this screen.
                 
                 */
                
                
                Text("Tap a button to see accessibility options or notifications.")
                    .font(.title3)
                    .foregroundColor(Color("Black"))
                    .multilineTextAlignment(.leading)
                    .padding(10)
                
            
                
                /*
                 
                 Arica: These buttons navigate to the Accessibility and Notifications screens.
                 
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
            }
            .navigationBarTitle("Settings", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                self.appState.moveToDashboard = true
            }) {
                Text("Home")
            })
            
        }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
