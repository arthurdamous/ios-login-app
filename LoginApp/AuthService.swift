//
//  AuthService.swift
//  LoginApp
//
//  Created by Arthur Damous on 21/05/25.
//

import Foundation
import FirebaseAuth

protocol AuthServiceProtocol {
    func login(email: String, password: String, completion: @escaping (Bool) -> Void)
    func logout()
}

class FirebaseAuthService : AuthServiceProtocol {
    func login(email: String, password: String, completion: @escaping (Bool) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            completion (error == nil)}
    }
    func logout() {
        try? Auth.auth().signOut()
    }
}
