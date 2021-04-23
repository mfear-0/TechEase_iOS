//
//  TechEaseTutorialList.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/20/21.
//  Modified by Arica Conrad on 4/20/21.
//

import SwiftUI

struct Tutorial: Identifiable{
    let id = UUID()
    let TutorialName: String
    let Icon: String
}

struct viewTutorial: View {
    let tutorialDisplay: Tutorial
    
    /*
    Arica: I modified the design of the image and text within the button. Yes, there are a lot of Spacers, but that is how I think I was able to get the image to be on the far left and the text to be centered within the button.
    */
    @State private var showingAlert = false
    var body: some View{
        Button(action:{ self.showingAlert = true }) {
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
        .padding(10)
        .buttonStyle(RoundedButton())
        .alert(isPresented: $showingAlert) {
            Alert(title: Text(tutorialDisplay.TutorialName), message: Text("Just testing button! Click OK to dismiss"), dismissButton: .default(Text("OK")))
                }
    }
}

struct TechEaseTutorialList: View {
    
    /*
    Arica: I modified the "Apps" icon and the "Social Media" icons. I changed the "Apps" icon from "app.badge" to "square.grid.2x2.fill" to match our high-fidelity prototype more. I also modified the "Social Media" icon to be "person.2.fill" instead of "person.3". I found this new icon to be a better size and the icon being filled in makes it stand out more.
    */
    
    let TutorialList = [
        Tutorial(TutorialName: "Phone Features", Icon: "iphone"),
        Tutorial(TutorialName: "Apps", Icon:"square.grid.2x2.fill"),
        Tutorial(TutorialName: "Internet", Icon:"globe"),
        Tutorial(TutorialName: "Social Media", Icon:"person.2.fill"),
        
    ]
    
    
    var body: some View {
        VStack{
            
            /*
             Arica: The title at the top will tell the user that this is the "Tutorials" screen, the screen that will display all the tutorial categories.
             
             IMPORTANT NOTE: THIS DESIGN IS PLACEHOLDER ONLY!
            
             This design will probably not be used when the app is further developed, as I imagine we will come up with a more sophisticated upper navigation menu. I will design that menu when it is implemented and will take this out at that time.
             */
            
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
            
            List(TutorialList) { aTutorial in
                viewTutorial(tutorialDisplay: aTutorial)
            }
            
        }
    }
}

struct RoundedButton: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        return configuration
            /*
            Arica: I modified this section to make the buttons look like our high-fidelity prototype. That way, whenever RoundedButton is called, this styling will be used, keeping the design consistent.
            */
            .label
            .padding()
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .background(RoundedRectangle(cornerRadius: 10).stroke(Color("DarkBlue"), lineWidth: 2).background(Color("LightBlue").cornerRadius(10)))
            .foregroundColor(.black)
    }
}

struct TechEaseTutorialList_Previews: PreviewProvider {
    static var previews: some View {
        TechEaseTutorialList()
    }
}

