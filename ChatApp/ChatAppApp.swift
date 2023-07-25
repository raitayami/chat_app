//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by Tayami Rai on 23/07/2023.
//

import SwiftUI
import Firebase

@main
struct ChatAppApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }

}
