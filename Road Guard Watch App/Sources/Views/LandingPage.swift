//
//  LandingPage.swift
//  Road Guard Watch App
//
//  Created by Juan R Aguirre on 1/9/25.
//

import SwiftUI

struct LandingPage: View {
    var body: some View {
        GeometryReader { geometry in
                Image("LandingPage")
                .resizable()
                .scaledToFill()
                .frame(width: geometry.size.width, height: geometry.size.height)
        }
        .ignoresSafeArea()
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
