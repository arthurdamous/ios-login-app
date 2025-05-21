//
//  ContentView.swift
//  LoginApp
//
//  Created by Arthur Damous on 21/05/25.
//

import SwiftUI

struct HomeView : View {
    
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        VStack {
            Text("Bem-vindo ao app!")
                .font(.largeTitle)
            
            Button("Sair") {
                viewModel.logout()
            }
            .foregroundStyle(.white)
            .padding()
            .background(Color.red)
            .cornerRadius(10)
        }
    }
}

struct HomeViewPreview : PreviewProvider {
    
    static var previews: some View {
        HomeView()
    }
    
}
