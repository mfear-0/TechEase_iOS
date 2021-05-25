//
//  SettingsScreen.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/20/21.
//  Modified by Arica Conrad on 4/30/21 and 5/1/21.
//  Modified by Arica Conrad on 5/15/21.
//  Modified by Arica Conrad on 5/20/21.
//  Modified by Natalman Nahm on 5/24/21
//


import SwiftUI
import AVFoundation

struct SettingsScreen: View {
    @EnvironmentObject var appState: AppState
    @State var action: Int?
    var body: some View {

            VStack() {
            
                /*
                 
                 Arica: This is the instructional text that describes what the user can do on this screen.
                 
                 */
                
                
                Text("Tap a button to see accessibility options or notifications.")
                    .font(.title3)
                    .foregroundColor(Color("Black"))
                    .multilineTextAlignment(.leading)
                    // Arica: This padding is necessary for the left and right sides of the instructional text.
                    .padding(10)
                    // Arica: This provides a bit more space above and below the instructional text.
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                
            
                
                /*
                 
                 Arica: These buttons navigate to the Accessibility and Notifications screens.
                 
                 */
                
                NavigationLink(destination: Accessibility(), tag: 1, selection: $action) {
                    EmptyView()
                }
                    
                NavigationLink(destination: NotificationsScreen(), tag: 2, selection: $action) {
                    EmptyView()
                }
                
                CustomButton(icon: "figure.stand", label: "Accessibility")
                .onTapGesture {
                    self.action = 1
                    speakButtonText(textToSpeak: "Accessibility")
                }
                .padding()
                
                CustomButton(icon: "bell", label: "Notifications")
                .onTapGesture {
                    self.action = 2
                    speakButtonText(textToSpeak: "Notifications")
                }
                .padding()
                
                Spacer()
            }
            .navigationBarTitle("Settings", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                self.appState.moveToDashboard = true
            }) {
                
                Text_to_SpeechButton(speech: "Tap a button to see accessibility options or notifications.")
                    .padding(.trailing, 7.0)
                
                
                VStack {
                    Image(systemName: "house")
                        .foregroundColor(Color("Black"))
                    Text("Home")
                        .foregroundColor(Color("Black"))
                        // Arica: It seems you actually can customize the font size, but it loses that bold look that is automatically applied to links in the navigation bar.
                        //.font(.title3)
                }
                // Arica: This was @Mackenzie's original code.
                //Text("Home")
            }
            .padding(.trailing, 3.0))

            
        }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
