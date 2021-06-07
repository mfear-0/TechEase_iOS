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
        VStack {
            VStack(){
                ScrollView {
                Text("The " + tutorial.TutorialName + " Tutorial will teach you the following:")
                    .font(.title)
                    .foregroundColor(Color("DarkBlue"))
                    .padding([.top, .leading, .trailing], 12.0)
                Text("- Opening up Messaging App \n- Creating and Sending text message \n- Understanding the Keyboard \n- Replying to a text message \n- Creating and repying to a group chat \n- Sending images and videos through a text")
                    .font(.title3)
                    .foregroundColor(Color("Black"))
                    .multilineTextAlignment(.leading)
                    //.padding(10)
                    //.padding(.bottom, 60)
                
                
                NavigationLink(
                    destination: TechEaseTutorialList()){
                    CustomButton(icon: "play", label: "Start Tutorial")
                        .padding()
                }
                .isDetailLink(false)
            }
        }
            ZStack {
                HStack {
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        VStack {
                            Image(systemName: "questionmark")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            Text("Help")
                                .font(.title2)
                                .foregroundColor(Color("Black"))
                        }
                    })
                    .buttonStyle(HelpButton())
                }
            }
                    
        }
        .padding(.top, 0)
        .listStyle(PlainListStyle())
        .navigationBarTitle("Overview", displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {
            self.appState.moveToDashboard = true
        }) {
            
            Text_to_SpeechButton(speech: "Tap Start to begin this tutorial.")
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

struct OverviewScreen_Previews: PreviewProvider {
    static var previews: some View {
        OverviewScreen(tutorial: Tutorial(TutorialName: "Texting", Icon: "globe"))
    }
}
