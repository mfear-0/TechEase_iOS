//
//  ContentView.swift
//  TechEase
//
//  Created by Arica Conrad, Mackenzie
//  Fear, Hans Mandt, and Natalman Nahm
//  on 4/17/21.
//  Modified by Arica Conrad on 10/10/21.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @EnvironmentObject var appState: AppState
    @State var action: Int?
    
    
    func FileIO() -> [String] {
        let str2 = ["default", "text"]
        

        if let filepath = Bundle.main.path(forResource: "The Compass Tutorial", ofType: "txt") {
            do {

                let contents = try String(contentsOfFile: filepath)
                return contents.components(separatedBy: "\n")

            } catch {
                print("contents not loaded")
                return str2
            }
        }
        else {
            print("not found")
            return str2
        }
    }
    
    func textByLine(int1: Int) -> String {
        
        let textArray: [String] = FileIO()
        let str1 = textArray[int1]
        return str1
    }


    var body: some View {
        
        ZStack {
            
            Color("White").ignoresSafeArea()
            
            VStack {
                
                ScrollView {
                    
                    VStack {
                        
                        // Arica: Groups are necessary because there is a max of 10 views per one container.
                        
                        Group {
                            
                            // Arica: The Compass Tutorial title.
                            Text(textByLine(int1: 0))
                            // Arica: Normally, I do not put padding at the beginning of the code. But for some reason, this title is so particular that the padding needs to be here.
                                .padding(.top, 30)
                                .font(.title)
                                .foregroundColor(Color("DarkBlue"))
                            // Arica: Found this bit of code on Reddit. Seems to be the only thing helping to stop the ... after the text.
                                .fixedSize(horizontal: false, vertical: true)
                             
                            // Arica: The Compass Tutorial icon.
                            Image(systemName: "location.north.line")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                                .padding(.bottom, 20)
                                .foregroundColor(Color("Black"))
                            
                            // Arica: Tutorial subheading.
                            Text(textByLine(int1: 1))
                                .font(.title2)
                                .foregroundColor(Color("DarkBlue"))
                                .multilineTextAlignment(.center)
                                .padding()
                            
                            // Arica: Tutorial text.
                            Text(textByLine(int1: 2))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()

                            // Arica: Tutorial picture.
                            Image("Picture1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250.0)
                            // Arica: This adds a curved dark blue border to the image.
                                .border(Color("DarkBlue"), width: 5)
                                .cornerRadius(10)
                            
                            // Arica: Tutorial picture caption.
                            Text(textByLine(int1: 3))
                                .font(.title3)
                                .italic()
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial text.
                            Text(textByLine(int1: 4))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                                            
                            // Arica: Tutorial subheading.
                            Text(textByLine(int1: 5))
                                .font(.title2)
                                .foregroundColor(Color("DarkBlue"))
                                .multilineTextAlignment(.center)
                                .padding()
                            
                            // Arica: Tutorial text.
                            Text(textByLine(int1: 6))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial picture.
                            Image("Picture2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250.0)
                                .border(Color("DarkBlue"), width: 5)
                                .cornerRadius(10)
                        }
                        
                        Group {
                            
                            // Arica: Tutorial picture caption.
                            Text(textByLine(int1: 7))
                                .font(.title3)
                                .italic()
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial text.
                            Text(textByLine(int1: 8))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial picture.
                            Image("Picture3")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250.0)
                                .border(Color("DarkBlue"), width: 5)
                                .cornerRadius(10)
                            
                            // Arica: Tutorial picture caption.
                            Text(textByLine(int1: 9))
                                .font(.title3)
                                .italic()
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial text.
                            Text(textByLine(int1: 10))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial picture.
                            Image("Picture4")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250.0)
                                .border(Color("DarkBlue"), width: 5)
                                .cornerRadius(10)
                            
                            // Arica: Tutorial picture caption.
                            Text(textByLine(int1: 11))
                                .font(.title3)
                                .italic()
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial text.
                            Text(textByLine(int1: 12))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial picture.
                            Image("Picture5")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250.0)
                                .border(Color("DarkBlue"), width: 5)
                                .cornerRadius(10)
                            
                            // Arica: Tutorial picture caption.
                            Text(textByLine(int1: 13))
                                .font(.title3)
                                .italic()
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                        }
                            
                        Group {
                            
                            // Arica: Tutorial text.
                            Text(textByLine(int1: 14))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial text.
                            Text(textByLine(int1: 15))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial picture.
                            Image("Picture6")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250.0)
                                .border(Color("DarkBlue"), width: 5)
                                .cornerRadius(10)
                            
                            // Arica: Tutorial picture caption.
                            Text(textByLine(int1: 16))
                                .font(.title3)
                                .italic()
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial text.
                            Text(textByLine(int1: 17))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial picture.
                            Image("Picture7")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250.0)
                                .border(Color("DarkBlue"), width: 5)
                                .cornerRadius(10)
                            
                            // Arica: Tutorial picture caption.
                            Text(textByLine(int1: 18))
                                .font(.title3)
                                .italic()
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial text.
                            Text(textByLine(int1: 19))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial picture.
                            Image("Picture8")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250.0)
                                .border(Color("DarkBlue"), width: 5)
                                .cornerRadius(10)
                            
                            // Arica: Tutorial picture caption.
                            Text(textByLine(int1: 20))
                                .font(.title3)
                                .italic()
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                        }
                        
                        Group {
                            
                            // Arica: Tutorial text.
                            Text(textByLine(int1: 21))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial picture.
                            Image("Picture9")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250.0)
                                .border(Color("DarkBlue"), width: 5)
                                .cornerRadius(10)
                            
                            // Arica: Tutorial picture caption.
                            Text(textByLine(int1: 22))
                                .font(.title3)
                                .italic()
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial text.
                            Text(textByLine(int1: 23))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial text.
                            Text(textByLine(int1: 24))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial picture.
                            Image("Picture10")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250.0)
                                .border(Color("DarkBlue"), width: 5)
                                .cornerRadius(10)
                            
                            // Arica: Tutorial picture caption.
                            Text(textByLine(int1: 25))
                                .font(.title3)
                                .italic()
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial subheading.
                            Text(textByLine(int1: 26))
                                .font(.title2)
                                .foregroundColor(Color("DarkBlue"))
                                .multilineTextAlignment(.center)
                                .padding()
                            
                            // Arica: Tutorial text.
                            Text(textByLine(int1: 27))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial picture.
                            Image("Picture11")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250.0)
                                .border(Color("DarkBlue"), width: 5)
                                .cornerRadius(10)
                        }
                        
                        Group {
                            
                            // Arica: Tutorial picture caption.
                            Text(textByLine(int1: 28))
                                .font(.title3)
                                .italic()
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: Tutorial text.
                            Text(textByLine(int1: 29))
                                .font(.title3)
                                .foregroundColor(Color("Black"))
                                .multilineTextAlignment(.leading)
                                .padding()
                            
                            // Arica: End of tutorial text.
                            Text(textByLine(int1: 30))
                                .font(.title2)
                                .foregroundColor(Color("DarkBlue"))
                                .multilineTextAlignment(.center)
                                .padding()
                        }
                    
                        // Arica: These are the practice and video tutorial buttons. They do not work at the moment.
                        
                        VStack {
                            
                            CustomButton(icon: "hand.raised", label: "Practice Tutorial")
                                .onTapGesture {
                                    self.action = 2
                                    speakButtonText(textToSpeak: "Practice Tutorial")
                                }
                                .padding()
                            
                            NavigationLink(
                                destination: VideoTutorialScreen(), tag: 1, selection: $action){
                                EmptyView()
                            }
                            NavigationLink(
                                destination: TPTestView(), tag: 2, selection: $action){
                                EmptyView()
                            }

                            CustomButton(icon: "play.rectangle", label: "Video Tutorial")
                                .onTapGesture {
                                    self.action = 1
                                    speakButtonText(textToSpeak: "Video Tutorial")
                                }
                                .padding()
                                .padding(.bottom, 20)
                        }
                    }
                    
                    Spacer()
                }
                
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
        }
        .navigationBarTitle("Settings", displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {
            self.appState.moveToDashboard = true
        }) {
            
            Text_to_SpeechButton(speech: "")
                .padding(.trailing, 7.0)
            
            
            VStack {
                Image(systemName: "house")
                    .foregroundColor(Color("Black"))
                Text("Home")
                    .foregroundColor(Color("Black"))
                    // Arica: It seems you actually can customize the font size, but it loses that bold look that is automatically applied to links in the navigation bar.
                    //.font(.title3)
            }
            // Arica: This was @Mackenzie's original code.
            //Text("Home")
        }
        .padding(.trailing, 3.0))
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AppState())
    }
}
