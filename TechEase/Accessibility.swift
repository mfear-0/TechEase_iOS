//
//  Accessibility.swift
//  TechEase
//
//  Created by Natalman Nahm on 4/20/21.
//  Modified by Arica Conrad on 5/1/21.
//  Modified by Arica Conrad on 5/6/21.
//  Modified by Arica Conrad on 5/15/21.
//

/*
 
 Arica:
 
 @Natalman, if you need your code as a reference, I left it commented out at the bottom of this file. I didn't want to delete it in case you needed it to look back to. If you in fact don't need the code, feel free to delete it. I left comments saying where your code starts and ends.
 
 */

import SwiftUI

struct Accessibility: View {
    var body: some View {
        
        VStack() {
            
            /*
             
             Arica: This is the instructional text that describes what the user can do on this screen.
             
             */
            
            
            Text("Tap a button to customize your accessibility options.")
                .font(.title3)
                .foregroundColor(Color("Black"))
                .multilineTextAlignment(.leading)
                .padding(10)
            
        
            
            /*
             
             Arica: Even though we only have three buttons, I put everything in a ScrollView for good practice. I think this is what we will need to do from here on out. These buttons also do not work.
             
             */
            
            ScrollView {
                
                Button(action: {
                    // Nothing?
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
                    // Nothing?
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
                    // Nothing?
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
            /*
            .background(RoundedRectangle(cornerRadius: 0).stroke(Color("LightGray"), lineWidth: 4).background(Color("White")))
            */
        }
        
        
        
        
        
        /*
         //////////////////////////////
         
         Start of @Natalman's original code.
         
         //////////////////////////////
         */
        
        /*
        VStack(alignment: .center, spacing: 0.0){
            Text("Tap a button to customize your accessibility options")
                .multilineTextAlignment(.center)
                .font(.system(size: 20.0))
                .padding(.all, 24.0)
            
            Button(action: {}) {
                HStack{
                    Image(systemName: "hearingaid.ear")
                        .resizable()
                        .frame(width:28, height: 48)
                    Text("Text-To-Speech")
                        .padding(.leading, 28.0)
                    Spacer()
                }
                .padding(.leading, 42.0)
                
            }
                .padding([.leading, .bottom, .trailing], 28.0)
                .buttonStyle(RoundedButton())
            
            Button(action: {}) {
                HStack{
                    Image(systemName: "eye")
                        .resizable()
                        .frame(width:52, height: 38)
                    Text("Vision Options")
                        .padding(.leading, 28.0)
                    Spacer()
                }
                .padding(.leading, 42.0)
                
            }
                .padding([.leading, .bottom, .trailing], 28.0)
                .buttonStyle(RoundedButton())
            
            Button(action: {}) {
                HStack{
                    Image(systemName: "mic.fill")
                        .resizable()
                        .frame(width:32, height: 38)
                    Text("Voice Commands")
                        .padding(.leading, 28.0)
                    Spacer()
                }
                .padding(.leading, 42.0)
                
            }
                .padding([.leading, .bottom, .trailing], 28.0)
                .buttonStyle(RoundedButton())
            
            
            Spacer()
            Button(action: {}) {
                Text("Help")
                    .padding()
            }
            .buttonStyle(HelpButton())
        }
        */
        
        /*
         //////////////////////////////
         
         End of @Natalman's original code.
         
         //////////////////////////////
         */
    }
}

struct Accessibility_Previews: PreviewProvider {
    static var previews: some View {
        Accessibility()
    }
}
