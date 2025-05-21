//
//  LoginAppApp.swift
//  LoginApp
//
//  Created by Arthur Damous on 21/05/25.
//

import SwiftUI
import Firebase

@main
struct LoginAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
