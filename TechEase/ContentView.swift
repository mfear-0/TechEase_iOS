//
//  ContentView.swift
//  TechEase
//
//  Created by Arica Conrad, Mackenzie Fear,
//  Hans Mandt, and Natalman Nahm on 4/17/21.
//
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
        ScrollView {
            ZStack{
                Color("White").ignoresSafeArea()
                
                VStack{
                    Group {
                        Text(textByLine(int1: 0))
                            .font(.title)
                            .foregroundColor(Color("DarkBlue"))
                        Text(textByLine(int1: 1))
                            .foregroundColor(Color("DarkBlue"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Text(textByLine(int1: 2))
                            .foregroundColor(Color("Black"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Image("Picture1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250.0)
                        Text(textByLine(int1: 3))
                            .foregroundColor(Color("Black"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Text(textByLine(int1: 4))
                            .foregroundColor(Color("DarkBlue"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Group {
                        Text(textByLine(int1: 5))
                            .foregroundColor(Color("Black"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Image("Picture2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250.0)
                        Text(textByLine(int1: 6))
                            .foregroundColor(Color("Black"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Image("Picture3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250.0)
                        Text(textByLine(int1: 7))
                            .foregroundColor(Color("Black"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Image("Picture4")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250.0)
                        Text(textByLine(int1: 8))
                            .foregroundColor(Color("Black"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Image("Picture5")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250.0)
                        Text(textByLine(int1: 9))
                            .foregroundColor(Color("Black"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Image("Picture6")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250.0)
                    }
                    Group {
                        Text(textByLine(int1: 10))
                            .foregroundColor(Color("Black"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Image("Picture7")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250.0)
                        Text(textByLine(int1: 11))
                            .foregroundColor(Color("Black"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Image("Picture8")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250.0)
                        Text(textByLine(int1: 12))
                            .foregroundColor(Color("Black"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Text(textByLine(int1: 13))
                            .foregroundColor(Color("Black"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Image("Picture9")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250.0)
                        Text(textByLine(int1: 14))
                            .foregroundColor(Color("Black"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Group {
                        Text(textByLine(int1: 15))
                            .foregroundColor(Color("Black"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Text(textByLine(int1: 16))
                            .foregroundColor(Color("Black"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Image("Picture10")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250.0)
                        Text(textByLine(int1: 17))
                            .foregroundColor(Color("DarkBlue"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Text(textByLine(int1: 18))
                            .foregroundColor(Color("Black"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Image("Picture11")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250.0)
                        Text(textByLine(int1: 19))
                            .foregroundColor(Color("Black"))
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    
                }
                
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


