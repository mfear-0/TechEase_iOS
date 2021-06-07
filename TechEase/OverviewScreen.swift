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
                    

        
        /*
        
        Arica: This ZStack is for the background color to ignore the safe area and color the entire background.
         
        */
        
        ZStack {
         
            Color("White").ignoresSafeArea()
            
            VStack {
                
                Text("The " + tutorial.TutorialName + " Tutorial will teach you the following:")
                    .font(.title)
                    .foregroundColor(Color("DarkBlue"))
                    .multilineTextAlignment(.leading)
                    .padding(10)
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                
                /*
                
                Arica: I added the ScrollView in case the screen size is small and the list is long. The "Start Tutorial" button is within the ScrollView as well. This also prevents the text from being cut off on smaller screen sizes.
                 
                */
                
                ScrollView {

                    VStack {
                        /*
                        
                        Arica: Natalman's original code had + "\n" at the end of the Text in the foreach loop. I am leaving this as a reminder in case we need to use it again.
                         
                        */

                        ForEach(getOverViewContent(index: index, tutId: tutId).indices) {
                            i in
                            
                            HStack {
                                Text("- " + (self.getOverViewContent(index: index, tutId: tutId)[i]))
                                    .font(.title2)
                                    .foregroundColor(Color("Black"))
                                    .padding(.leading, 20)
                                Spacer()
                            }
                            .padding(.bottom, 3)
                        }
                    }
                    .padding(.bottom, 20)
                    
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
            }
            .padding(.top, 0)
            .listStyle(PlainListStyle())
            .navigationBarTitle("Overview", displayMode: .inline)
            .navigationBarItems( trailing:
                                    
                HStack {
                    Text_to_SpeechButton(speech: "The " + tutorial.TutorialName + " Tutorial will teach you the following:", audioContent: getOverViewContent(index: index, tutId: tutId), otherAudio: "Tap the Start tutorial Button to begin the tutorial.")
                        .padding(.trailing, 7.0)
                    
                    Button(action: {
                    
                    self.appState.moveToDashboard = true
                    
                    }) {
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

        .padding(.trailing, 3.0))
        

        return contentOverview

    }
}

struct OverviewScreen_Previews: PreviewProvider {
    static var previews: some View {
        OverviewScreen(tutorial: Tutorial(TutorialName: "Texting", Icon: "globe"), index: 1, tutId: 1)
    }
}
