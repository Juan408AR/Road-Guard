//
//  Road_GuardApp.swift
//  Road Guard Watch App
//
//  Created by Juan R Aguirre on 1/9/25.
//

import SwiftUI

@main
struct Road_Guard_Watch_App: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                LandingPage()
            }
        }
    }
}

struct Road_Guard_Watch_App_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
        
    }
}
