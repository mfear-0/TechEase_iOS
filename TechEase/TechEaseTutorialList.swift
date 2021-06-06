//
//  TechEaseTutorialList.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/20/21.
//  Modified by Arica Conrad on 4/20/21.
//  Modified by Arica Conrad on 5/15/21.
//  Modified by Arica Conrad on 5/20/21.
//  Modified By Natalman Nahm on 06/05/21
//

import SwiftUI

struct viewTutorial: View {
    @EnvironmentObject var appState: AppState
    @State var action: Int?
    let tutorialDisplay: Tutorial
    
    var body: some View{
        ZStack{
            NavigationLink(destination: DetailTutorial(detailTutorialList: self.getArrayListOfTut(tutName: tutorialDisplay.TutorialName), tutId: getId(tutName: tutorialDisplay.TutorialName)), tag: 1, selection: $action){
                EmptyView()
            }
            .isDetailLink(false)
            .opacity(0)
            .buttonStyle(PlainButtonStyle())
            
            HStack{
                Image(systemName: tutorialDisplay.Icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color("Black"))
                Spacer()
                Spacer()
                Text(tutorialDisplay.TutorialName)
                    .font(.title2)
                    .foregroundColor(Color("Black"))
                Spacer()
                Spacer()
                Spacer()
            }
            .onTapGesture {
                self.action = 1
                speakButtonText2(textToSpeak: tutorialDisplay.TutorialName)
            }
        }
        .navigationBarTitle("Tutorials", displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {
            self.appState.moveToDashboard = true
        }) {
            
            Text_to_SpeechButton(speech: "Tap a button below to view the tutorials in that group.")
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
    
    func getArrayListOfTut(tutName: String) -> Array<Tutorial> {
        if tutName == "Phone Features" {
            return phoneFeatureList
        } else if tutName == "Apps" {
            return appList
        } else if tutName == "Internet" {
           return internetList
        } else {
            return socialMediaList
        }
    }
    
    func getId (tutName: String) -> Int {
        if tutName == "Phone Features" {
            return 0
        } else if tutName == "Apps" {
            return 1
        } else if tutName == "Internet" {
           return 2
        } else {
            return 3
        }
    }
}

struct TechEaseTutorialList: View {
    
    var body: some View {

                VStack{

                    /*
                    
                    Arica: This is the instructional text at the top of the screen.
                     
                    */
                    
                    Text("Tap a button below to view the tutorials in that group.")
                        .font(.title3)
                        .foregroundColor(Color("Black"))
                        .multilineTextAlignment(.leading)
                        // Arica: This padding is necessary for the left and right sides of the instructional text.
                        .padding(10)
                        // Arica: This provides a bit more space above and below the instructional text.
                        .padding(.top, 20)
                        .padding(.bottom, 10)
                    
                    List(tutorialList) { aTutorial in
                        viewTutorial(tutorialDisplay: aTutorial)
                            .padding()
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .background(RoundedRectangle(cornerRadius: 10).stroke(Color("DarkBlue"), lineWidth: 2).background(Color("LightBlue").cornerRadius(10)))
                            .foregroundColor(Color("Black"))
                            // Arica: This padding provides a bit more space between the buttons.
                            .padding(.top, 5)
                            .padding(.bottom, 5)
                    }
                    .listStyle(PlainListStyle())
                    
                }
            }
}

struct TechEaseTutorialList_Previews: PreviewProvider {
    static var previews: some View {
        TechEaseTutorialList()
    }
}

