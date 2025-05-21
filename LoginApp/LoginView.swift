//
//  LoginView.swift
//  LoginApp
//
//  Created by Arthur Damous on 21/05/25.
//
import SwiftUI

struct LoginView: View {
    
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Login")
                .font(.largeTitle)
                .bold()
            
            TextField("Email", text: $viewModel.email)
                .autocapitalization(.none)
                .keyboardType(.emailAddress)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
            
            SecureField("Senha", text: $viewModel.password)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
            
            Button("Entrar") {
                viewModel.login()
            }
            
            if viewModel.showError {
                Text("Email ou senha incorretos")
                    .foregroundColor(.red)
                    .font(.caption)
            }
            
            Spacer()
        }
        .padding()
        .navigationDestination(isPresented: $viewModel.isLoggedIn) {
            HomeView()
        }
        
    }
}

struct LoginViewPreview: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
