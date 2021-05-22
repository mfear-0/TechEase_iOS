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
    let detailTutDisplay: Tutorial
    
    var body: some View{
        
        ZStack{
            NavigationLink(destination: OverviewScreen(tutorial: self.detailTutDisplay)){
                
                EmptyView()
                
            }
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
            .navigationBarTitle("Tutorial Details", displayMode: .inline)
        }
        
    }
}

struct DetailTutorial_Previews: PreviewProvider {
    static var previews: some View {
        DetailTutorial(detailTutorialList: appList)
    }
}
