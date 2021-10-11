//
//  DetailTutorial.swift
//  TechEase
//
//  Created by Natalman Nahm on 5/1/21.
//  Modified by Arica Conrad on 5/15/21.
//  Modified by Arica Conrad on 5/20/21.
//  Modified By Natalman Nahm on 06/05/21
//  Modified by Arica Conrad on 6/6/21.
//  Modified by Arica Conrad on 10/10/21.
//

import SwiftUI

struct viewDetailTutorial: View{
    @EnvironmentObject var appState: AppState
    @State var action: Int?
    let detailTutDisplay: Tutorial
    let index: Int
    let tutId: Int
    
    
    var body: some View{
        
        ZStack{
            NavigationLink(destination: OverviewScreen(tutorial: self.detailTutDisplay, index: self.index, tutId: self.tutId), tag: 1, selection: $action){
                
                EmptyView()
                
            }
            .isDetailLink(false)
            .opacity(0)
            .buttonStyle(PlainButtonStyle())
            
//            NavigationLink(destination: HelpScreen(), tag: 10, selection: $action) {  EmptyView()
//            }
//            .isDetailLink(false)
            
            HStack{
                Image(systemName: detailTutDisplay.Icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color("Black"))
                Spacer()
                Spacer()
                Text(detailTutDisplay.TutorialName)
                    .font(.title2)
                    .foregroundColor(Color("Black"))
                Spacer()
                Spacer()
                Spacer()
            }
            .onTapGesture {
                self.action = 1
                speakButtonText3(textToSpeak: detailTutDisplay.TutorialName)
            }
        }
        .navigationBarTitle("Details", displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {
            self.appState.moveToDashboard = true
        }) {
            
            Text_to_SpeechButton(speech: "Tap a button below to learn more about that tutorial.")
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



struct DetailTutorial: View {
    @State var action: Int?
    var detailTutorialList : Array<Tutorial>
    var tutId: Int
    
    /*
    
    Arica: This code is in the TechEaseTutorialList file as well. However, I couldn't get this init() function to work because of the PreviewProvider code at the bottom of the file. The parameters are affecting it.
     
     Interestingly, the init() function that does work in the DetailTutorial file affects this screen as well. If you take out the init() function in that file, both screens change in the same way.
     
     I am leaving this code commented out for now in the event I might be able to get it work. If it ends up not working in the future, I will take the code and this comment out.
     
    */
    
    /*
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    */
    
    var body: some View {

        /*
        
        Arica: This ZStack is for the background color to ignore the safe area and color the entire background.
         
        */
        
        ZStack {
            
            Color("White").ignoresSafeArea()
            
            VStack {
                
                Text("Tap a button below to learn more about that tutorial.")
                    .font(.title3)
                    .foregroundColor(Color("Black"))
                    .multilineTextAlignment(.leading)
                    // Arica: This padding is necessary for the left and right sides of the instructional text.
                    .padding(10)
                    // Arica: This provides a bit more space above and below the instructional text.
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                
                List(detailTutorialList.indices){
                    index in viewDetailTutorial(detailTutDisplay: detailTutorialList[index], index: index, tutId: tutId)
                        .padding()
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(RoundedRectangle(cornerRadius: 10).stroke(Color("DarkBlue"), lineWidth: 2).background(Color("LightBlue").cornerRadius(10)))
                        .foregroundColor(.black)
                        // Arica: This padding provides a bit more space between the buttons.
                        .padding(.top, 5)
                        .padding(.bottom, 5)
                }
                .listStyle(PlainListStyle())
                
                // Arica: The Help button.
                ZStack {
                    
                    HStack {
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "hand.draw")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .padding(10)
                                .foregroundColor(Color("Black"))
                            Text("Swipe up or down to see more content.")
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                            NavigationLink(destination: HelpScreen(), tag: 3, selection: $action) {  EmptyView()
                            }
                            .isDetailLink(false)
                        }
                        .padding(10)
                        
                        Spacer()
                        
                        Button(action: {self.action = 3}, label: {
                            VStack {
                                Image(systemName: "questionmark")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(Color("Black"))
                                Text("Help")
                                    .font(.title2)
                                    .foregroundColor(Color("Black"))
                            }
                        })
                        .buttonStyle(HelpButton())
                    }
                }
                .background(RoundedRectangle(cornerRadius: 0).stroke(Color("LightGray"), lineWidth: 4).background(Color("White")))
            }
        }
    }
}

struct DetailTutorial_Previews: PreviewProvider {
    static var previews: some View {
        DetailTutorial(detailTutorialList: appList, tutId: 1)
    }
}
