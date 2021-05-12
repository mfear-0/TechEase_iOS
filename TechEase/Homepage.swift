//
//  Homepage.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/30/21.
//

import SwiftUI

struct Homepage: View {
    
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor.green
    }
    
    var body: some View {
        NavigationView{
            VStack(){
                Text("Welcome!")
                    .font(.system(size: 32.0))
                    .foregroundColor(Color("DarkBlue"))
                    .padding(.bottom)
                    .padding(.top)
                Text("Tap a button to access the tutorials or the settings. If you help, tap the help button in the bottom right corner.")
                    .font(.title3)
                    .foregroundColor(Color("Black"))
                    .multilineTextAlignment(.leading)
                    .padding(10)
                
                NavigationLink(
                    destination: TechEaseTutorialList()){
                    CustomButton(icon: "books.vertical", label: "Start Tutorial")
                        .padding()
                }
                
                NavigationLink(
                    destination: SettingsScreen()){
                    CustomButton(icon: "gearshape", label: "Settings")
                        .padding()
                }
                Spacer()
                
            }
            .padding(.top, 0)
            .listStyle(PlainListStyle())
            .navigationBarTitle("TechEase", displayMode: .inline)

        }
    }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}
