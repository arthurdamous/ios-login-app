//
//  ContentView.swift
//  LoginApp
//
//  Created by Arthur Damous on 21/05/25.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
    
    var body: some View {
        if isLoggedIn {
            HomeView()
        } else {
            LoginView()
        }
    }
}
