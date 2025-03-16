//
//  HomeScreen.swift
//  Road Guard
//
//  Created by Juan R Aguirre on 2/28/25.
//

import SwiftUI

struct HomeScreen: View {
    let menuOptions = ["Report", "Profile", "Content", "Achievements", "Logout"]
    @State private var rotationAngle: Double = 0
    
    var body: some View {
        GeometryReader { geometry in
            
            
            ZStack {
                
                VStack {
                    Button(action: {
                        print("Report tapped")
                    }) {
                        VStack {
                            Text("Report")
                                .font(.system(size: 16, weight: .medium))
                        }
                        .frame(width: 150, height: 50)
                        .background(Color.blue)
                        .foregroundStyle(Color.white)
                    }
                    .cornerRadius(20)
                    .buttonStyle(.plain)
                    
                    Spacer()
                    
                    HStack(spacing: 10) {
                        
                        SmallButton(title: "Profile", action: {
                            print("Profile")
                        })
                        
                        SmallButton(title: "Content", action: {
                            print("Content")
                        })
                        
                        
                        SmallButton(title: "Logout", action: {
                                print("Logged Out")
                        })
                    }
                }
               
                
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            
        }
    }
}

struct SmallButton: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack {
                Text(title)
                    .font(.system(size: 10, weight: .medium))
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
            }
            .frame(width: 60, height: 60)
            .background(Circle().fill(Color.blue))
            .foregroundStyle(.white)
        }
        .buttonStyle(.plain)

    }
}


struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
