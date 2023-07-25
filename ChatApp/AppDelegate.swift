//
//  AppDelegate.swift
//  ChatApp
//
//  Created by Tayami Rai on 25/07/2023.
//

import Foundation
import SwiftUI
import FirebaseCore

class AppDelegate: UIResponder, UIApplicationDelegate {

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
                   [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
