//
//  TechEaseTutorialList.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/20/21.
//  Modified by Arica Conrad on 4/20/21.
//

import SwiftUI

struct viewTutorial: View {
    let tutorialDisplay: Tutorial
    
    /*
    Arica: I modified the design of the image and text within the button. Yes, there are a lot of Spacers, but that is how I think I was able to get the image to be on the far left and the text to be centered within the button.
    */
    @State private var detailTutorialList : Array<Tutorial> = []
    var body: some View{
        ZStack{
            NavigationLink(destination: DetailTutorial(detailTutorialList: self.detailTutorialList)){
                EmptyView()
            }
            .opacity(0)
            .buttonStyle(PlainButtonStyle())
            
            HStack{
                Image(systemName: tutorialDisplay.Icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
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

struct TechEaseTutorialList: View {
    
    /*
    Arica: I modified the "Apps" icon and the "Social Media" icons. I changed the "Apps" icon from "app.badge" to "square.grid.2x2.fill" to match our high-fidelity prototype more. I also modified the "Social Media" icon to be "person.2.fill" instead of "person.3". I found this new icon to be a better size and the icon being filled in makes it stand out more.
    */
    
    var body: some View {
        VStack{
            
            /*
             Arica: The title at the top will tell the user that this is the "Tutorials" screen, the screen that will display all the tutorial categories.
             
             IMPORTANT NOTE: THIS DESIGN IS PLACEHOLDER ONLY!
            
             This design will probably not be used when the app is further developed, as I imagine we will come up with a more sophisticated upper navigation menu. I will design that menu when it is implemented and will take this out at that time.
             */
            
            NavigationView{
                VStack{
                    Text("Tutorials")
                       .font(.largeTitle)
                       .fontWeight(.regular)
                       .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                       .foregroundColor(Color("Black"))
                       .padding()
                       .border(/*@START_MENU_TOKEN@*/Color("DarkGreen")/*@END_MENU_TOKEN@*/, width: 2)
                       .background(Color("LightGreen"))
                       .padding()
                    
                    /*
                    Arica: This is the instructional text placed at the top of the screen.
                    */
                    
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
                            .foregroundColor(.black)
                    }
                    .padding(.top, 0)
                    .listStyle(PlainListStyle())
                    .navigationBarTitle("", displayMode: .inline)
                }
            }
            
        }
    }
}

struct TechEaseTutorialList_Previews: PreviewProvider {
    static var previews: some View {
        TechEaseTutorialList()
    }
}

