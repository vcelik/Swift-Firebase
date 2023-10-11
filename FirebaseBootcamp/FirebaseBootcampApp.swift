//
//  FirebaseBootcampApp.swift
//  FirebaseBootcamp
//
//  Created by Volkan Celik on 27/05/2023.
//

import SwiftUI
import Firebase

@main
struct FirebaseBootcampApp: App {
    
    @StateObject private var vm=HomeViewModel()
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(vm)

        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
