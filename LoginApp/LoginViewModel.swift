//
//  LoginViewModel.swift
//  LoginApp
//
//  Created by Arthur Damous on 21/05/25.
//

import Combine
import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var showError = false
    
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    
    private let authService: AuthServiceProtocol
    
    init(authService: AuthServiceProtocol = FirebaseAuthService()) {
        self.authService = authService
    }
    
    func login() {
        authService.login(email: email, password: password) { success in
            DispatchQueue.main.async {
                if success {
                    self.isLoggedIn = true
                } else {
                    self.showError = true
                }
            }
        }
    }
    
    func logout() {
        authService.logout()
        isLoggedIn = false
    }
    
}
