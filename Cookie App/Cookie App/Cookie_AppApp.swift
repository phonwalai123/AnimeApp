//
//  Cookie_AppApp.swift
//  Cookie App
//
//  Created by phonwalai on 4/6/2564 BE.
//

import SwiftUI
import Firebase

@main
struct Cookie_AppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

//Intitalizing Firebase

class AppDelegate: NSObject,UIApplicationDelegate{
    
    func application(_ application: UIApplication,didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool{
        
        FirebaseApp.configure()
        return true
    }
}
