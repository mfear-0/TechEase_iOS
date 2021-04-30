//
//  Homepage.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/30/21.
//

import SwiftUI

struct Homepage: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .center, spacing: 0.0){
                Text("Welcome!")
                    .font(.system(size: 32.0))
                    .foregroundColor(Color("DarkBlue"))
                    .padding(.bottom)
                Text("Tap a button to access the tutorials or the settings. If you help, tap the help button in the bottom right corner.")
                    .padding(.horizontal)
                NavigationLink(
                    destination: TechEaseTutorialList()){
                    /* @Arica, you can refer back to the CustomButton if you want to customize these buttons. I just made a separate file for it to keep the code clean and reusable.
                     */
                    CustomButton(icon: "books.vertical", label: "Start Tutorial")
                }
                .padding(.vertical)
                
                NavigationLink(
                    destination: SettingsScreen()){
                    CustomButton(icon: "gearshape", label: "Settings")
                }
                
                Spacer()
                
            }
        }
    }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}
