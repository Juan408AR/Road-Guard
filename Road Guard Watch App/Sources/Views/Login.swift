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
        VStack(spacing: 10){
            Text("Login")
                .font(.system(size: 24, weight: .bold))
                .padding()
            
            TextField("Email", text: $email)
                .textContentType(.emailAddress)
                .textInputAutocapitalization(.never)
                .padding(8)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
                .padding(.horizontal)
        }
            
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
