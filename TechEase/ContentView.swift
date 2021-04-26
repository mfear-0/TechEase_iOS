//
//  ContentView.swift
//  TechEase
//
//  Created by Arica Conrad, Mackenzie Fear,
//  Hans Mandt, and Natalman Nahm on 4/17/21.
//

import SwiftUI
//TESTING STUFF WITH THE REPO NAME
struct CascadiaCourse : Identifiable {
    let id = UUID()
    let img: String
    let title: String
    
}
//test comment
struct CourseRow: View {
    let whichCourse: CascadiaCourse
    var body: some View {
        HStack {
            Image(systemName: whichCourse.img)
            Button(whichCourse.title){
                print("button pressed")
            }
        }
    }
}

struct ContentView: View {
    
    let courseList = [
        CascadiaCourse(img: "text.bubble.fill", title: "Texting"),
        CascadiaCourse(img: "envelope.fill", title: "Email"),
        CascadiaCourse(img: "phone.circle.fill", title: "Some other phone thing")
    ]
    
    var body: some View {
        VStack {
            
            NavigationView {
                Text("Sample Tutorials:").font(.title)
                .navigationBarTitle("TechEase", displayMode: .inline)
                    .navigationBarItems(trailing:
                                            HStack{
                                                Button("back"){
                                                    print("back")
                                                }
                                                Button("home"){
                                                    print("home")
                                                }
                                            }
                    )
            }
            .frame(height: 100.0)

            
            List(courseList) { aCourse in
                CourseRow(whichCourse:aCourse)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

