//
//  VideoTutorialScreen.swift
//  TechEase
//
//  Created by Natalman Nahm on 10/11/21.
//

import SwiftUI

struct VideoTutorialScreen: View {
    var body: some View {
        VideoView(videoId: "zLWXf-7RyqM")
            .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
            .cornerRadius(12.0)
            .padding(.horizontal, 24)
    }
}

struct VideoTutorialScreen_Previews: PreviewProvider {
    static var previews: some View {
        VideoTutorialScreen()
    }
}
