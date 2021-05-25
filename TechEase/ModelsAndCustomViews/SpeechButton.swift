//
//  SpeechButton.swift
//  TechEase
//
//  Created by Natalman Nahm on 5/24/21.
//

import Foundation
import AVFoundation

func speakButtonText(textToSpeak: String) {
    let utterance = AVSpeechUtterance(string: textToSpeak + " button pressed")
    
    utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
    
    utterance.rate = 0.5
    
    let synthesizer = AVSpeechSynthesizer()
    synthesizer.speak(utterance)
}
