//
//  DetailTutorial.swift
//  TechEase
//
//  Created by Natalman Nahm on 5/1/21.
//  Modified by Arica Conrad on 5/15/21.
//  Modified by Arica Conrad on 5/20/21.
//

import SwiftUI

struct viewDetailTutorial: View{
    @EnvironmentObject var appState: AppState
    @State var action: Int?
    let detailTutDisplay: Tutorial
    
    
    var body: some View{
        
        ZStack{
            NavigationLink(destination: OverviewScreen(tutorial: self.detailTutDisplay)){
                
                EmptyView()
                
            }
            .isDetailLink(false)
            .opacity(0)
            .buttonStyle(PlainButtonStyle())
            
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
        }
        .navigationBarTitle("Details", displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {
            self.appState.moveToDashboard = true
        }) {
            
            Text_to_SpeechButton(speech: "Tap a button to see tutorials on this topic.")
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
    
    var detailTutorialList : Array<Tutorial>
    
    var body: some View {

        VStack{
            
            Text("Tap a button below to learn more about that tutorial.")
                .font(.title3)
                .foregroundColor(Color("Black"))
                .multilineTextAlignment(.leading)
                // Arica: This padding is necessary for the left and right sides of the instructional text.
                .padding(10)
                // Arica: This provides a bit more space above and below the instructional text.
                .padding(.top, 20)
                .padding(.bottom, 10)
            
            List(detailTutorialList){
                aTutorial in viewDetailTutorial(detailTutDisplay: aTutorial)
                    .padding()
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color("DarkBlue"), lineWidth: 2).background(Color("LightBlue").cornerRadius(10)))
                    .foregroundColor(.black)
                    // Arica: This padding provides a bit more space between the buttons.
                    .padding(.top, 5)
                    .padding(.bottom, 5)
            }
            .listStyle(PlainListStyle())
            
            ZStack {
                HStack {
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
                    }
                    .padding(10)

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
            .background(RoundedRectangle(cornerRadius: 0).stroke(Color("LightGray"), lineWidth: 4).background(Color("White")))
                    
        }
    }
}

struct DetailTutorial_Previews: PreviewProvider {
    static var previews: some View {
        DetailTutorial(detailTutorialList: appList)
    }
}
