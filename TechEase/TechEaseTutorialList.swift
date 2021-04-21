//
//  TechEaseTutorialList.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/20/21.
//

import SwiftUI

struct Tutorial: Identifiable{
    let id = UUID()
    let TutorialName: String
    let Icon: String
}

struct viewTutorial: View {
    let tutorialDisplay: Tutorial
    
    var body: some View{
        Button(action:{ }) {
            HStack{
                Image(systemName: tutorialDisplay.Icon)
                    .resizable()
                    .frame(width:32, height: 32)
                Text(tutorialDisplay.TutorialName)
                    .padding(.leading, 28.0)
                Spacer()
            }
            .padding(.leading, 42.0)
        }
        .padding([.top, .leading, .trailing], 28.0)
            .buttonStyle(RoundedButton())
    }
}

struct TechEaseTutorialList: View {
    
    let TutorialList = [
        Tutorial(TutorialName: "Phone Features", Icon: "iphone"),
        Tutorial(TutorialName: "Apps", Icon:"app.badge"),
        Tutorial(TutorialName: "Internet", Icon:"globe"),
        Tutorial(TutorialName: "Social Media", Icon:"person.3"),
        
    ]
    
    
    var body: some View {
        VStack{
            Text("Tap a button bellow to view the tutorials in that group.")
                .multilineTextAlignment(.center)
                .font(.system(size: 20.0))
                .padding(.all, 24.0)
            
            List(TutorialList) { aTutorial in
                viewTutorial(tutorialDisplay: aTutorial)
            }
            
        }
    }
}

struct RoundedButton: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        return configuration
            .label
            .font(.system(size: 24.0))
            .foregroundColor(.black)
            .padding()
            .frame(maxWidth: .infinity, maxHeight: 72)
            .background(Color(red: 177/255, green: 255/255, blue: 156/255))
            .overlay(
                RoundedRectangle(cornerRadius: 5) .stroke(Color.black, lineWidth: 3.5))
    }
    
}

struct TechEaseTutorialList_Previews: PreviewProvider {
    static var previews: some View {
        TechEaseTutorialList()
    }
}

