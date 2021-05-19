//
//  SceneDelegate.swift
//  TechEase
//
//  Created by Student Account on 5/19/21.
//

import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Create the SwiftUI view that provides the window contents.
        let contentView = Homepage()
        let appState = AppState()
        
        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView:
                contentView
                    .environmentObject(appState)
            )
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
