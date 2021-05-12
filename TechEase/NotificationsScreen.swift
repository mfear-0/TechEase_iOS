//
//  NotificationsScreen.swift
//  TechEase
//
//  Created by Arica Conrad on 4/30/21.
//

import SwiftUI

struct NotificationsScreen: View {
    var body: some View {
        VStack {
            
            /*
             
             Arica: This is the placeholder title text. This can be removed when we have a top navigation menu.
             
             */
            
//            Text("Notifications")
//               .font(.largeTitle)
//               .fontWeight(.regular)
//               .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
//               .foregroundColor(Color("Black"))
//               .padding()
//               .border(/*@START_MENU_TOKEN@*/Color("DarkGreen")/*@END_MENU_TOKEN@*/, width: 2)
//               .background(Color("LightGreen"))
//               .padding()
            
            /*
             
             Arica: This is the instructional text that describes if the user has any notifications right now. We had this screen in our Android app, so I thought it would be good to have here too. Above the text is the bell icon for notifications, and it is colored dark blue.
             
             */
            
            Image(systemName: "bell")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .foregroundColor(Color("DarkBlue"))
                .padding()
            
            Text("There are no notifications at this time.")
                .font(.title3)
                .foregroundColor(Color("Black"))
                .multilineTextAlignment(.leading)
                .padding(10)
            
            /*
            
             Arica: A Spacer to push everything to the top of the screen.
             
            */
                .navigationBarTitle("Notifications")
            Spacer()
        }
    }
}

struct NotificationsScreen_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsScreen()
    }
}
