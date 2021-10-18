//
//  VisionOptions.swift
//  TechEase
//
//  Created by Arica Conrad on 10/17/21.
//

import SwiftUI
import AVFoundation

struct VisionOptions: View {
    
    // Arica: To store the dark mode switch's value.
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    // Arica: For the Navigation menu.
    @EnvironmentObject var appState: AppState
    @State var action: Int?
    
    var body: some View {
        
        ZStack {
            
            // Arica: To ignore the safe area and color the entire background.
            
            Color("White").ignoresSafeArea()
            
            VStack {
                
                ScrollView {
                    
                    // Arica: Heading text.
                    Text("Vision Options")
                        .font(.title)
                        .foregroundColor(Color("DarkBlue"))
                        .multilineTextAlignment(.center)
                        .padding()
                        .padding(.top, 20)
                    
                    // Arica: Vision Options icon.
                    Image(systemName: "eye")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color("DarkBlue"))
                    
                    // Arica: Picker for light and dark mode. If light mode is selected, the value is false, while if dark mode is selected, the value is true.
                    Picker("Mode", selection: $isDarkMode) {
                        Text("Light Mode")
                            .tag(false)
                            .foregroundColor(Color("Black"))
                        Text("Dark Mode")
                            .tag(true)
                            .foregroundColor(Color("Black"))
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    // Arica: This code is for the styling of the background of the picker.
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color("DarkBlue"), lineWidth: 2).background(Color("LightBlue").cornerRadius(10)))
                    .padding()
                    .padding(.top, 20)
                    
                    // Arica: Informational text.
                    Text("Light mode and dark mode are common features in smartphones now. Light mode (commonly the default setting) is when the background of the app is white, while dark mode is when the background is dark gray or black. \n \n Dark mode is commonly used to help with eye strain and can be an important personal preference for people. \n \n If you would like to turn on dark mode, tap the Dark Mode side of the picker above. If you want to return to light mode, tap the Light Mode side of the picker above. Your choice will be reflected across the entire app.")
                        .font(.title3)
                        .foregroundColor(Color("Black"))
                        .multilineTextAlignment(.leading)
                        .padding()
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                    
                    Spacer()
                }
                // Arica: Navigation menu code.
                .navigationBarTitle("Vision Options")
                .navigationBarItems(trailing: Button(action: {
                    self.appState.moveToDashboard = true
                }) {
                    
                    Text_to_SpeechButton(speech: "Tap the picker below to switch between light mode and dark mode.")
                        .padding(.trailing, 7.0)
                    
                    VStack {
                        Image(systemName: "house")
                            .foregroundColor(Color("Black"))
                        Text("Home")
                            .foregroundColor(Color("Black"))
                    }
                })
                
                // Arica: The Help button.
                ZStack {
                    
                    HStack {
                        
                        Spacer()
                        
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
                            NavigationLink(destination: HelpScreen(), tag: 3, selection: $action) {  EmptyView()
                            }
                            .isDetailLink(false)
                        }
                        .padding(10)
                        
                        Spacer()
                        
                        Button(action: {self.action = 3}, label: {
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
                .background(RoundedRectangle(cornerRadius: 0).stroke(Color("LightGray"), lineWidth: 4).background(Color("White")))
            }
            // Arica: This will switch the color scheme based on whether light mode or dark mode is selected.
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}

struct VisionOptions_Previews: PreviewProvider {
    static var previews: some View {
        VisionOptions()
    }
}
