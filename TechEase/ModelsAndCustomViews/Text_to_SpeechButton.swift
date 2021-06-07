//
//  SpeechButton.swift
//  TechEase
//
//  Created by Natalman Nahm on 5/22/21.
//  Modified by Arica Conrad on 6/6/21.
//

import SwiftUI
import AVFoundation

struct Text_to_SpeechButton: View {
    
    var speech: String
    var audioContent: Array<String>?
    var otherAudio: String?
    var body: some View {
        Button(action: {
            
            var playAudio = ""
            
            for content in audioContent ?? [String]() {
                playAudio = playAudio + content + " "
            }
            
            let utterance = AVSpeechUtterance(string: (speech + " " + playAudio + " " + otherAudio!))
            utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
            
            utterance.rate = 0.5
            
            let synthesizer = AVSpeechSynthesizer()
            synthesizer.speak(utterance)
            
        }) {
            VStack{
                Image(systemName: "mic.circle")
                    .foregroundColor(Color("Black"))
                Text("Speak")
                    .foregroundColor(Color("Black"))
            }
        }
    }
}

struct SpeechButton_Previews: PreviewProvider {
    static var previews: some View {
        Text_to_SpeechButton(speech: "Welcome! Tap a button to access the tutorials or the settings. If you need help, tap the help button in the bottom right corner.")
    }
}
