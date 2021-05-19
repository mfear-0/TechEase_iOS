//
//  OverviewScreen.swift
//  TechEase
//
//  Created by Natalman Nahm on 5/13/21.
//

import SwiftUI

struct OverviewScreen: View {
    
    var tutorial: Tutorial
    
    
    var body: some View {
        NavigationView{
            VStack(){
                Text("The " + tutorial.TutorialName + " Tutorial will teach you the following:")
                    .font(.title)
                    .foregroundColor(Color("DarkBlue"))
                    .padding([.top, .leading, .trailing], 12.0)
                Text("- Opening up Messaging App \n- Creating and Sending text message \n- Understanding the Keyboard \n- Replying to a text message \n- Creating and repying to a group chat \n- Sending images and videos through a text")
                    .font(.title3)
                    .foregroundColor(Color("Black"))
                    .multilineTextAlignment(.leading)
                    .padding(10)
                    .padding(.bottom, 60)
                
                
                NavigationLink(
                    destination: TechEaseTutorialList()){
                    CustomButton(icon: "play", label: "Start Tutorial")
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

struct OverviewScreen_Previews: PreviewProvider {
    static var previews: some View {
        OverviewScreen(tutorial: Tutorial(TutorialName: "Texting", Icon: "globe"))
    }
}
