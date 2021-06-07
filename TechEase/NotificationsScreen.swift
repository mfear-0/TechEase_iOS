//
//  NotificationsScreen.swift
//  TechEase
//
//  Created by Arica Conrad on 4/30/21.
//  Modified by Arica Conrad on 5/20/21.
//  Modified by Arica Conrad on 6/6/21.
//

import SwiftUI

struct NotificationsScreen: View {
    
    @EnvironmentObject var appState: AppState
    @State var action: Int?
    
    var body: some View {
        
        /*
        
        Arica: This ZStack is for the background color to ignore the safe area and color the entire background.
         
        */
        
        ZStack {
            
            Color("White").ignoresSafeArea()
            
            VStack {
                
                /*
                 
                 Arica: This is the instructional text that describes if the user has any notifications right now. We had this screen in our Android app, so I thought it would be good to have here too. Above the text is the bell icon for notifications, and it is colored dark blue.
                 
                 */
                
                Image(systemName: "bell")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color("DarkBlue"))
                    // Arica: This padding is not as necessary for the left and right sides of the icon, but I am leaving it here for consistency.
                    .padding(10)
                    // Arica: This provides a bit more space above and below the instructional text.
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                
                Text("There are no notifications at this time.")
                    .font(.title3)
                    .foregroundColor(Color("Black"))
                    .multilineTextAlignment(.leading)
                    .padding(10)
                
                /*
                
                 Arica: A Spacer to push everything to the top of the screen.
                 
                */
                    .navigationBarTitle("Notifications")
    //                .navigationBarItems(trailing: Text_to_SpeechButton(speech: "There are no notifications at this time."))

                    
                Spacer()
            }
            .navigationBarItems(trailing: Button(action: {
                self.appState.moveToDashboard = true
            }) {
                
                Text_to_SpeechButton(speech: "There are no notifications at this time.")
                    .padding(.trailing, 7.0)
                
                
                VStack {
                    Image(systemName: "house")
                        .foregroundColor(Color("Black"))
                    Text("Home")
                        .foregroundColor(Color("Black"))
                        // Arica: It seems you actually can customize the font size, but it loses that bold look that is automatically applied to links in the navigation bar.
                        //.font(.title3)
                }
            }
            .padding(.trailing, 3.0))
        }
    }
}

struct NotificationsScreen_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsScreen()
    }
}
