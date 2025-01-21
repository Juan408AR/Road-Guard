//
//  LandingPage.swift
//  Road Guard Watch App
//
//  Created by Juan R Aguirre on 1/9/25.
//

import SwiftUI

struct LandingPage: View {
    
    @State private var isLoginActive = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("LandingPage")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                
                VStack {
                    Spacer()
                        .frame(height: geometry.size.height * 0.2)
                    Text("Road Guard")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 1, x: 1, y: 1)
                        .padding()
                        .cornerRadius(10)
                    
                    Spacer()
                    
                    Button(action: {
                        isLoginActive = true
                    }) {
                        Text("Touch to Login")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue.opacity(0.6))
                            .cornerRadius(10)
                    }
                    .padding()
                    Spacer()
                    
                }
            }
            .fullScreenCover(isPresented: $isLoginActive) {
                LoginPage()
            }
            
        }
        .ignoresSafeArea()
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
