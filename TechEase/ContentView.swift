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
    
    let url = Bundle.main.url(forResource: "FileIOTest", withExtension: "rtf")

    
    func printLine() -> String {
        let filename = "FileIOTest.rtf"
        var str1: String
        var myCounter: Int
        do {
            let contents = try String(contentsOfFile: filename)
            let lines = contents.split(separator:"\n")
            myCounter = lines.count
            str1 = String(myCounter)
            } catch {
                return (error.localizedDescription)
            }
            return str1
    }


    var body: some View {
        VStack{
            Text(printLine())
            
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AppState())
    }
}


