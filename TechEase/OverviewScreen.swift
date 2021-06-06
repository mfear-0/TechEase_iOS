//
//  OverviewScreen.swift
//  TechEase
//
//  Created by Natalman Nahm on 5/13/21.
//  Modified By Natalman Nahm on 06/05/21
//  Modified by Arica Conrad on 6/6/21.
//

import SwiftUI

struct OverviewScreen: View {
    @EnvironmentObject var appState: AppState
    @State var action: Int?
    var tutorial: Tutorial
    var index: Int
    var tutId: Int
    
    
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
                
                VStack(alignment: .leading){
                    
                    ForEach(getOverViewContent(index: index, tutId: tutId).indices) {
                        i in
                        Text("- " + (self.getOverViewContent(index: index, tutId: tutId)[i]) + "\n")
                            .font(.title2)
                            .foregroundColor(Color("Black"))
                            .padding(.leading)
                    }
                }
                .padding(.top, 5.0)
                
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
    
    func getOverViewContent (index: Int, tutId: Int) -> Array<String> {
        
        var overview = [[""]]
        var content = [""]
        
        if tutId == 0 {
            overview = phoneFeaturesOverview
            content = getIndexContent(index: index, contents: overview)
        } else if tutId == 1{
            overview = appsOverview
            return getIndexContent(index: index, contents: overview)
        } else if tutId == 2 {
            overview = internetOverview
            return getIndexContent(index: index, contents: overview)
        } else if tutId == 3 {
            overview = socialMediaOverview
            return getIndexContent(index: index, contents: overview)
        }
        
        return content
    }
    
    func getIndexContent(index: Int, contents: Array<Array<String>>) -> Array<String>{
        
        var contentOverview = [""]
        
        for content in contents {
            if contents.firstIndex(of: content) == index {
                contentOverview = content
            }
        }
        return contentOverview
    }
}

struct OverviewScreen_Previews: PreviewProvider {
    static var previews: some View {
        OverviewScreen(tutorial: Tutorial(TutorialName: "Texting", Icon: "globe"), index: 1, tutId: 1)
    }
}
