//
//  TPTestView.swift
//  TechEase
//
//  Created by Student Account on 10/11/21.
//

import SwiftUI

struct TPTestView: View {
    @EnvironmentObject var appState: AppState
    @State var action: Int?
    
    @State private var bgImg = Image("phonebg")
    @State private var xPos = 100.0
    @State private var yPos = 250.0
    @State private var bWidth = 100.0
    @State private var bHeight = 100.0
    @State private var bText = "Click Here"
    @State private var edge1 = 10.0
    @State private var inst = "Click the Compass app to open it."
    @State private var cgColor: Color = Color.white
    
    
    var body: some View {
        
        VStack{
            //EmptyView()
            Button(action: {
                switch self.bgImg {
                case Image("phonebg"):
                    self.bgImg = Image("compbg")
                    self.xPos = 195.0
                    self.yPos = 627.0
                    self.bWidth = 1000.0
                    self.bText = " "
                    self.edge1 = 300.0
                    self.inst = "Click on coordinates to open the map."
                    
                case Image("compbg"):
                    self.cgColor = Color.black
                    self.bgImg = Image("mapbg")
                    self.xPos = 195
                    self.yPos = 373
                    self.edge1 = 37.0
                    self.inst = "This shows your location on the map. Click the blue marker to repeat the tutorial, or click here to return."
                default:
                    self.bgImg = Image("phonebg")
                    self.xPos = 100.0
                    self.yPos = 250.0
                    self.edge1 = 10.0
                    self.inst = "Click the Compass app to open it."
                    self.bWidth = 100.0
                    self.bHeight = 100.0
                    self.bText = "Click Here"
                    self.cgColor = Color.white

                }
            }){
                Text(bText)
                    .foregroundColor(.white)
                    .font(.system(size:24))
                    .padding(EdgeInsets(top: 10, leading: edge1, bottom: 10, trailing: 10))
                    .border(cgColor, width: 5)
                    
            }
            .frame(width:bWidth, height:bHeight, alignment: .center)
            .padding(.all, 20)
            .position(x:CGFloat(xPos), y:CGFloat(yPos))

            NavigationLink(destination: ContentView(), tag: 1, selection: $action){
                Text(inst)
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                    .foregroundColor(.white)
                    .font(.system(size:22))
                    .frame(alignment: .center)
                    .background(cgColor.opacity(0.5))
            }
            .isDetailLink(false)

                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgImg
                        .resizable()
                        .aspectRatio(contentMode: .fill))
    }
    
}

struct TPTestView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TPTestView()
                .environmentObject(AppState())
        }
    }
}
