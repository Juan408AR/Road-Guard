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
    @State private var navigateToHome: Bool = false
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ScrollView {
                    VStack(alignment: .center, spacing: 10) {
                        
                        Spacer()
                        
                        TextField("Email", text: $email)
                            .textContentType(.emailAddress)
                            .textInputAutocapitalization(.never)
                            .frame(width: geometry.size.width * 0.8, height: 50)
                            .font(.system(size: 14))
                            .padding(.horizontal)
                        
                        SecureField("Password", text: $password)
                            .frame(width: geometry.size.width * 0.8, height: 50)
                            .padding(.horizontal)
                        
                        Button(action: {
                            navigateToHome = true
                            print("showingAlert set to true")
                        }) {
                            Text("Login")
                        }
                        
                        .font(.system(size: 14))
                        .frame(width: geometry.size.width, height: 50)
                        
                        NavigationLink(destination: SignUpPage()) {
                            Text("Sign Up")
                                .font(.system(size: 12))
                                .foregroundStyle(Color.blue)
                                .underline()
                        }
                        .frame(width: geometry.size.width, height: 50)
                        
                    }
                    .navigationDestination(isPresented: $navigateToHome) {
                        HomeScreen()
                    }

                    .frame(width: geometry.size.width)
                    
                }
                
                
                
            }
        }
            
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
