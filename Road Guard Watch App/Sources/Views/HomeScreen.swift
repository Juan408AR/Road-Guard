//
//  HomeScreen.swift
//  Road Guard
//
//  Created by Juan R Aguirre on 2/28/25.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(spacing: 20) {
            
            NavigationLink(destination: ReportView()) {
                Text("Report")
                    .font(.system(size: 16))
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }

            NavigationLink(destination: ProfileView()) {
                Text("Profile")
                    .font(.system(size: 16))
                    .frame(width: 200, height: 50)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }

            NavigationLink(destination: ContentView()) {
                Text("Content")
                    .font(.system(size: 16))
                    .frame(width: 200, height: 50)
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }

            NavigationLink(destination: AchievementsView()) {
                Text("Achievements")
                    .font(.system(size: 16))
                    .frame(width: 200, height: 50)
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }

            Button(action: {
            }) {
                Text("Logout")
                    .font(.system(size: 16))
                    .frame(width: 200, height: 50)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .navigationTitle("Home")     }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
