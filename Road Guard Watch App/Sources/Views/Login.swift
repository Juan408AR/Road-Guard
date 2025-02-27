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
        GeometryReader { geometry in
            
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
                    showingAlert = true
                }) {
                    Text("Login")
                }
                .font(.system(size: 14))
                .frame(width: geometry.size.width * 0.6, height: 50)

            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            
            
        }
            
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
