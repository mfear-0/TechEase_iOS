//
//  TPTestView.swift
//  TechEase
//
//  Created by Student Account on 10/11/21.
//

import SwiftUI

struct TPTestView: View {
    @State private var bgImg = Image("bg1")
    
    @State private var xPos = 100.0
    @State private var yPos = 100.0
    
    var body: some View {
        VStack{
            //EmptyView()
            Button(action: {
                switch self.bgImg {
                case Image("bg1"):
                    self.bgImg = Image("bg2")
                    self.xPos = 200.0
                    self.yPos = 200.0
                case Image("bg2"):
                    self.bgImg = Image("bg3")
                    self.xPos = 150.0
                    self.yPos = 150.0
                default:
                    self.bgImg = Image("bg1")
                    self.xPos = 100.0
                    self.yPos = 100.0
                }
            }){
                Text("Button Text")
                    .font(.system(size:24))
                    .foregroundColor(.black)
            }
            .frame(width:100, height:100, alignment: .center)
            .padding(.all, 20)
            .position(x:xPos, y:yPos)


        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgImg)
    }
    
}

struct TPTestView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TPTestView()
            TPTestView()
        }
    }
}
