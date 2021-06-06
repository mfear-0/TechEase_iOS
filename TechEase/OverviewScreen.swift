//
//  OverviewScreen.swift
//  TechEase
//
//  Created by Natalman Nahm on 5/13/21.
//

import SwiftUI

struct OverviewScreen: View {
    @EnvironmentObject var appState: AppState
    @State var action: Int?
    var tutorial: Tutorial
    
    
    var body: some View {
        
        /*
 
         Arica: This ZStack is for the background color to ignore the safe area and color the entire background.
         
        */
        
        ZStack {
            
            Color("White").ignoresSafeArea()
            
            VStack {
                Text("The " + tutorial.TutorialName + " Tutorial will teach you the following:")
                    .font(.title)
                    .foregroundColor(Color("DarkBlue"))
                    .padding([.top, .leading, .trailing], 12.0)
                Text("- Opening up Messaging App \n- Creating and Sending text message \n- Understanding the Keyboard \n- Replying to a text message \n- Creating and replying to a group chat \n- Sending images and videos through a text")
                    .font(.title3)
                    .foregroundColor(Color("Black"))
                    .multilineTextAlignment(.leading)
                    .padding(10)
                    .padding(.bottom, 60)
                
                
                NavigationLink(
                    destination: TechEaseTutorialList(), tag: 1, selection: $action){
                    EmptyView()
                }
                .isDetailLink(false)
                
                CustomButton(icon: "play", label: "Start Tutorial")
                .onTapGesture {
                    self.action = 1
                    speakButtonText(textToSpeak: "Start Tutorial")
                }
                .padding()
                Spacer()
                
            }
            .padding(.top, 0)
            .listStyle(PlainListStyle())
            .navigationBarTitle("Overview", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                self.appState.moveToDashboard = true
            }) {
                
                Text_to_SpeechButton(speech: "The " + tutorial.TutorialName + " Tutorial will teach you the following:" + " Opening up Messaging app. Creating and Sending text message. Understanding the Keyboard. Replying to a text message. Creating and replying to a group chat. Sending images and videos through a text. " + "Tap the Start tutorial Button to begin the tutorial.")
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
}

struct OverviewScreen_Previews: PreviewProvider {
    static var previews: some View {
        OverviewScreen(tutorial: Tutorial(TutorialName: "Texting", Icon: "globe"))
    }
}
