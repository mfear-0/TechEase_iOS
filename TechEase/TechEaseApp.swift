//
//  TechEaseApp.swift
//  TechEase
//
//  Created by Arica Conrad, Mackenzie Fear, Hans Mandt, and Natalman Nahm on 4/17/21.
//

import SwiftUI

@main
struct TechEaseApp: App {
    @StateObject var environmentObject = AppState()
    
    var body: some Scene {
        WindowGroup {
            Homepage()
                .environmentObject(environmentObject)
        }
    }
}
