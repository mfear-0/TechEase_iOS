//
//  HelpScreen.swift
//  TechEase
//
//  Created by Hans Mandt on 4/21/21.
//  Modified by Arica Conrad on 5/6/21.
//  Modified by Arica Conrad on 5/16/21.
//  Modified by Arica Conrad on 5/20/21.
//  Modified by Arica Conrad on 6/6/21.
//

import SwiftUI

struct HelpScreen: View {
    
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

                 Arica: This is the placeholder title text. This can be removed when we have a top navigation menu.
                 
                 */
                
    //            Text("Help")
    //               .font(.largeTitle)
    //               .fontWeight(.regular)
    //               .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
    //               .foregroundColor(Color("Black"))
    //               .padding()
    //               .border(Color("DarkYellow"), width: 2)
    //               .background(Color("LightYellow"))
    //               .padding()
                
                /*
                
                Arica: The ScrollView encompasses the text and the "Contact Us" button, but not the swipe up or down text.
                 
                */
                
                ScrollView {
                    
                    /*
                    
                    Arica: I put each title in an HStack, as that was the only way I was able to move it to the far left. For some reason, setting the multilineTextAlignment property to be leading didn't move the title. It may be because it is only one line, I'm not sure.
                     
                    */
                    
                    HStack {
                        Text("Phone Controls")
                            .font(.title)
                            .foregroundColor(Color("DarkBlue"))
                        // Arica: The Spacer pushes the title text to the left.
                        Spacer()
                    }
                    // Arica: This padding is necessary for providing enough space on the left side of the text.
                    .padding(.leading)
                    // Arica: This provides a bit more space above the first text so it is not as close to the navigation menu when the menu is implemented. Bottom padding is not necessary, unlike the other screens.
                    .padding(.top, 20)
                        
                    
                    Text("Tap the screen to press buttons. Swipe your finger up to scroll the page down, and swipe down to scroll the page up.")
                        .foregroundColor(Color("Black"))
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .padding()

        
                    HStack {
                        Text("Navigating This App")
                            .font(.title)
                            .foregroundColor(Color("DarkBlue"))
                        // Arica: The Spacer pushes the title text to the left.
                        Spacer()
                    }
                    .padding(.leading)

                    
                    Text("The Home button will take you back to the first screen (also known as the Home Screen) of this app. The back button will take you to the previous screen you were on.")
                        .foregroundColor(Color("Black"))
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    
                    HStack {
                        Text("Tutorials")
                            .font(.title)
                            .foregroundColor(Color("DarkBlue"))
                        // Arica: The Spacer pushes the title text to the left.
                        Spacer()
                    }
                    .padding(.leading)
                        
                    
                    Text("Tutorials are grouped into categories. Selecting a tutorial category button will take you to a list of tutorials within that category. You can choose from the category list by tapping on one of the buttons to access that specific tutorial.")
                        .foregroundColor(Color("Black"))
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    /*
                    
                    Arica: The "Contact Us" button is still within the ScrollView, so the user will need to scroll to see the button.
                     
                    */
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        HStack {
                            Image(systemName: "envelope")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color("Black"))
                            Spacer()
                            Spacer()
                            Text("Contact Us")
                                .font(.title2)
                                .foregroundColor(Color("Black"))
                            Spacer()
                            Spacer()
                            Spacer()
                        }
                    }
                    .padding()
                    .buttonStyle(RoundedButton())
                    
                    
                }
                
                /*
                
                Arica: This is the code for having both the scroll text and the Help Button be present together. The Help Button code is commented out because we are already on the Help screen.
                 
                 What the styling at the end of the ZStack does is it makes a light gray rectangle to outline our scroll text. I had to use the RoundedRectangle style, but I set the corner radius value to be zero so it still looks like a rectangle.
                 
                 @Hans Mandt
                 When you add the Help Button to each screen, please use the following code. If the screen scolls, please also include the code for the scroll icon and text.
                 
                */
                
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
                        
                        /*
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
                        */
                    }
                }
                .background(RoundedRectangle(cornerRadius: 0).stroke(Color("LightGray"), lineWidth: 4).background(Color("White")))
            }
            .navigationBarTitle("Notifications")
            .navigationBarItems(trailing: Button(action: {
                self.appState.moveToDashboard = true
            }) {
                
                Text_to_SpeechButton(speech: "T.T.S. to be applied here later i guess.")
                    .padding(.trailing, 7.0)
                
                
                VStack {
                    Image(systemName: "house")
                        .foregroundColor(Color("Black"))
                    Text("Home")
                        .foregroundColor(Color("Black"))
                        // Arica: It seems you actually can customize the font size, but it loses that bold look that is automatically applied to links in the navigation bar.
                        //.font(.title3)
                }
            }
            .padding(.trailing, 3.0))
        }
    }
}

/*

Arica: I made a separate file for the Help Button code. In the unlikely event the code does not work, here is the code in its original location.
 
*/

/*
struct HelpButton: ButtonStyle {
    func makeBody (configuration: Self.Configuration) -> some View {
        return configuration
            .label
            .frame(width: 100, height: 100)
            .background(Color("LightYellow"))
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .foregroundColor(.black)
            .overlay(Circle().stroke(Color("DarkYellow"), lineWidth: 2))
            .padding()
    }
}
*/

struct HelpScreen_Previews:
    PreviewProvider {
        static var previews: some View {
            HelpScreen()
        }
    }
