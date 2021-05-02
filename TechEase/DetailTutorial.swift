//
//  DetailTutorial.swift
//  TechEase
//
//  Created by Natalman Nahm on 5/1/21.
//

import SwiftUI

struct viewDetailTutorial: View{
    let detailTutDisplay: Tutorial
    
    var body: some View{
        
        ZStack{
            NavigationLink(destination: SettingsScreen()){
                
                EmptyView()
                
            }
            .opacity(0)
            .buttonStyle(PlainButtonStyle())
            
            HStack{
                Image(systemName: detailTutDisplay.Icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
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
            NavigationView{
                VStack{
                    
                    Text("Tap a button below to learn more about that tutorial.")
                        .font(.title3)
                        .foregroundColor(Color("Black"))
                        .multilineTextAlignment(.leading)
                        .padding(10)
                    
                    List(detailTutorialList){
                        aTutorial in viewDetailTutorial(detailTutDisplay: aTutorial)
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

struct DetailTutorial_Previews: PreviewProvider {
    static var previews: some View {
        DetailTutorial(detailTutorialList: appList)
    }
}
