//
//  SignUp.swift
//  Road Guard
//
//  Created by Juan R Aguirre on 2/27/25.
//

import SwiftUI

struct SignUpPage: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""

    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ScrollView {
                    VStack(alignment: .center, spacing: 10) {
                        
                        TextField("Name", text: $name)
                            .font(.system(size: 14))
                            .frame(width: geometry.size.width * 0.8, height: 50)
                            .padding(.horizontal)
                        
                        TextField("Email", text: $email)
                            .font(.system(size: 14))
                            .frame(width: geometry.size.width * 0.8, height: 50)
                            .padding(.horizontal)
                        
                        SecureField("Password", text: $password)
                            .font(.system(size: 14))
                            .frame(width: geometry.size.width * 0.8, height: 50)
                            .padding(.horizontal)
                        
                        SecureField("Confirm Password", text: $confirmPassword)
                            .font(.system(size: 14))
                            .frame(width: geometry.size.width * 0.8, height: 50)
                            .padding(.horizontal)
                        
                        Button(action: {
                            signUp()
                        }) {
                            Text("Sign Up")
                                .font(.system(size: 14))
                                .frame(width: geometry.size.width * 0.6, height: 50)
                        }
                        .padding(.top, 10)
                        
                        NavigationLink(destination: LoginPage()) {
                            Text("Already have an account? Login")
                                .font(.system(size: 12))
                                .foregroundStyle(Color.blue)
                                .underline()
                        }
                        .padding(.top, 5)
                        
                    }
                    .frame(width: geometry.size.width)
                    
                }
                
                
                
            }
            
            .navigationTitle("Sign Up")
        }
    }
    
    private func signUp() {
        guard !name.isEmpty, !email.isEmpty, !password.isEmpty, !confirmPassword.isEmpty else {
            print("Please fill in all fields")
            return
        }
        
        guard password == confirmPassword else {
            print("Passwords do not match")
            return
        }
        
        print("Signing Up with: \(email)")
    }
    
}

struct SignUpPage_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPage()
    }
}
