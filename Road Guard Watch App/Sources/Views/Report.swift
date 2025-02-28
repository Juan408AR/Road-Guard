//
//  Report.swift
//  Road Guard
//
//  Created by Juan R Aguirre on 2/28/25.
//

import SwiftUI

struct ReportView: View {
    @State private var isLoginActive = false
    @State private var email = ""
    var body: some View {
        VStack(spacing: 20) {
            Text("Report View")
                .font(.title)
                .padding()        }
    }
}

struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView()
    }
}
