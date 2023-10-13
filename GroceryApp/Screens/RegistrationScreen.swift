//
//  RegistrationScreen.swift
//  GroceryApp
//
//  Created by shikhar on 13/10/23.
//

import SwiftUI

struct RegistrationScreen: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    private var isFormValid: Bool {
        !username.isEmptyorWhiteSpace && !password.isEmptyorWhiteSpace && (password.count >= 6 && password.count <= 15)
    }
    
    var body: some View {
        Form{
            TextField("Username", text: $username)
            SecureField("Password", text: $password)
            
            HStack {
                Spacer()
                
                Button("Register") {
                    
                }
                .buttonStyle(.borderless)
                .disabled(!isFormValid)
            }
        }
    }
}

#Preview {
    RegistrationScreen()
}
