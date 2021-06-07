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
        VStack{
            Text(textByLine(int1: 0))
                .font(.title)
                .foregroundColor(Color("DarkBlue"))
            Text(textByLine(int1: 1))
                .foregroundColor(Color("Black"))
                .font(.title3)
                .multilineTextAlignment(.leading)
                .padding()
            Text(textByLine(int1: 2))
                .foregroundColor(Color("Black"))
                .font(.title3)
                .multilineTextAlignment(.leading)
                .padding()
            Text(textByLine(int1: 3))
                .foregroundColor(Color("Black"))
                .font(.title3)
                .multilineTextAlignment(.leading)
                .padding()
            
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AppState())
    }
}


