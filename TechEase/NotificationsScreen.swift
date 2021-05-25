//
//  NotificationsScreen.swift
//  TechEase
//
//  Created by Arica Conrad on 4/30/21.
//  Modified by Arica Conrad on 5/20/21.
//

import SwiftUI

struct NotificationsScreen: View {
    var body: some View {
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
                .navigationBarItems(trailing: Text_to_SpeechButton(speech: "There are no notifications at this time."))
            Spacer()
        }
    }
}

struct NotificationsScreen_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsScreen()
    }
}
