//
//  Accessibility.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/20/21.
//  Modified by Arica Conrad on 5/1/21.
//  Modified by Arica Conrad on 5/6/21.
//  Modified by Arica Conrad on 5/15/21.
//  Modified by Arica Conrad on 5/20/21.
//  Modified by Natalman Nahm on 5/25/21.
//  Modified by Arica Conrad on 6/5/21.
//

import SwiftUI

struct Accessibility: View {
    @EnvironmentObject var appState: AppState
    @State var action: Int?

    var body: some View {
        
        /*
 
         Arica: This ZStack is for the background color to ignore the safe area and color the entire background.
         
        */
        
        ZStack {
            
            Color("White").ignoresSafeArea()
            
            VStack {
                
                /*
                 
                 Arica: This is the instructional text that describes what the user can do on this screen.
                 
                 */
                
                Text("Tap a button to customize your accessibility options.")
                    .font(.title3)
                    .foregroundColor(Color("Black"))
                    .multilineTextAlignment(.leading)
                    // Arica: This padding is necessary for the left and right sides of the instructional text.
                    .padding(10)
                    // Arica: This provides a bit more space above and below the instructional text.
                    .padding(.top, 20)
                    .padding(.bottom, 10)
                
                /*
                 
                 Arica: Even though we only have three buttons, I put everything in a ScrollView for good practice. I think this is what we will need to do from here on out. These buttons also do not work.
                 
                 */
                
                ScrollView {
                    
                    Button(action: {
                        speakButtonText(textToSpeak: "Text-to-Speech")
                    }) {
                        HStack{
                            Image(systemName: "hearingaid.ear")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color("Black"))
                            Spacer()
                            Spacer()
                            Text("Text-to-Speech")
                                .font(.title2)
                                .foregroundColor(Color("Black"))
                            Spacer()
                            Spacer()
                            Spacer()
                        }
                    }
                    .padding()
                    .buttonStyle(RoundedButton())
                    
                    
                    Button(action: {
                        speakButtonText(textToSpeak: "Vision Options")
                    }) {
                        HStack{
                            Image(systemName: "eye")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color("Black"))
                            Spacer()
                            Spacer()
                            Text("Vision Options")
                                .font(.title2)
                                .foregroundColor(Color("Black"))
                            Spacer()
                            Spacer()
                            Spacer()
                        }
                    }
                    .padding()
                    .buttonStyle(RoundedButton())
                    
                    
                    Button(action: {
                        speakButtonText(textToSpeak: "Voice Commands")
                    }) {
                        HStack{
                            Image(systemName: "mic.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color("Black"))
                            Spacer()
                            Spacer()
                            Text("Voice Commands")
                                .font(.title2)
                                .foregroundColor(Color("Black"))
                            Spacer()
                            Spacer()
                            Spacer()
                        }
                    }
                    .padding()
                    .navigationBarTitle("Accessibility")
                    .buttonStyle(RoundedButton())
                    .navigationBarItems(trailing: Button(action: {
                        self.appState.moveToDashboard = true
                    }) {
                        
                        Text_to_SpeechButton(speech: "Tap a button to customize your accessibility options.")
                            .padding(.trailing, 7.0)
                        
                        VStack {
                            Image(systemName: "house")
                                .foregroundColor(Color("Black"))
                            Text("Home")
                                .foregroundColor(Color("Black"))
                        }
                    })
                    
                    
                }
                
                /*
                            
                Arica: This is the code for showing the scroll icon, scroll text, and Help Button. If a screen does not scroll, you can comment out the swipe icon and text.
                 
                 VERY IMPORTANT!
                 On a screen that does not scroll, also comment out the styling at the end of the ZStack. It is not needed if we just have the Help Button (and an outline looks kind of odd without the scroll text).
                 
                */
                
                ZStack {
                    HStack {
                        /*
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
                        */
                        
                        Spacer()
    //                    NavigationLink(
    //                        destination: HelpScreen(), tag: 1, selection: $action){
    //                        EmptyView()
    //                    }
    //                    .isDetailLink(false)
                        // I tried to get the help button working to test the navbar stuff, but couldn't quite get it done. -mfear
                        
                        Button(action: {self.action = 1}, label: {
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
                /*
                .background(RoundedRectangle(cornerRadius: 0).stroke(Color("LightGray"), lineWidth: 4).background(Color("White")))
                */

            }
        }
    }
}

struct Accessibility_Previews: PreviewProvider {
    static var previews: some View {
        Accessibility()
    }
}
