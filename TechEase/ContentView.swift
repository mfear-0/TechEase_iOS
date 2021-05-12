//
//  ContentView.swift
//  TechEase
//
//  Created by Arica Conrad, Mackenzie Fear,
//  Hans Mandt, and Natalman Nahm on 4/17/21.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor.green
    }
    var body: some View {
        VStack{
            
            NavigationView{
                
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
                            .foregroundColor(.black)
                    }
                    .padding(.top, 0)
                    .listStyle(PlainListStyle())
                    .navigationBarTitle("Tutorials", displayMode: .inline)
                    .navigationBarItems(leading:
                                            Button(action: {
                                                print("Button 1 pressed")
                                            }) {
                                                Image(systemName: "arrow.left").imageScale(.large)
                                            },
                                        trailing:
                                            Button(action: {}, label: {
                                                NavigationLink(destination: Homepage()) {
                                                    Text("Home")
                                                }
                                            }))
                }
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


