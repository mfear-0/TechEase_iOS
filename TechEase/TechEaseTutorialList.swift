//
//  TechEaseTutorialList.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/20/21.
//  Modified by Arica Conrad on 4/20/21.
//  Modified by Arica Conrad on 5/15/21.
//

import SwiftUI

struct viewTutorial: View {
    let tutorialDisplay: Tutorial
    
    var body: some View{
        ZStack{
            NavigationLink(destination: DetailTutorial(detailTutorialList: self.getArrayListOfTut(tutName: tutorialDisplay.TutorialName) )){
                EmptyView()
            }
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
        }
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
}

struct TechEaseTutorialList: View {
    
    var body: some View {

                VStack{

                    
                    Text("Tap a button below to view the tutorials in that group.")
                        .font(.title3)
                        .foregroundColor(Color("Black"))
                        .multilineTextAlignment(.leading)
                        .padding(10)
                    
                    List(tutorialList) { aTutorial in
                        viewTutorial(tutorialDisplay: aTutorial)
                            .padding()
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .background(RoundedRectangle(cornerRadius: 10).stroke(Color("DarkBlue"), lineWidth: 2).background(Color("LightBlue").cornerRadius(10)))
                            .foregroundColor(Color("Black"))
                    }
                    //.padding(.top, 0)
                    .listStyle(PlainListStyle())
//                    .navigationBarItems(trailing:
//                                            Button(action: {}, label: {
//                                                            NavigationLink(destination: Homepage()) {
//                                                                Text("Home")
//                                                            }
//                                                        }))
                    .navigationBarTitle("Tutorials", displayMode: .inline)
                }
            }
}

struct TechEaseTutorialList_Previews: PreviewProvider {
    static var previews: some View {
        TechEaseTutorialList()
    }
}

