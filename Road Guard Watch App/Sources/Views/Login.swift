//
//  Login.swift
//  Road Guard
//
//  Created by Juan R Aguirre on 1/18/25.
//

import SwiftUI

struct LoginPage: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showingAlert: Bool = false
    
    var body: some View {
        ZStack {
            VStack(){
                
                Spacer()
                    .frame(height: 50)
                TextField("Email", text: $email)
                    .textContentType(.emailAddress)
                    .textInputAutocapitalization(.never)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .padding(.horizontal, 10)
                
                
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .padding(.horizontal, 10)
                
                Button(action: {
                    showingAlert = true
                }) {
                    Text("Login")
                        .font(.headline)
                        .foregroundStyle(Color.white)
                        .padding()
                        .background(Color.blue.opacity(0.6))
                        .cornerRadius(10)
                }
                .padding()
                Spacer()
            }
        }
            
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
