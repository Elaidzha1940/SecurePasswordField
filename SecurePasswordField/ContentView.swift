//  /*
//
//  Project: SecurePasswordField
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 11.10.2023
//
//  */

import SwiftUI

struct ContentView: View {
    @State private var password = "password"
    @State private var showPassword = true
    
    var body: some View {
        
        VStack {
        
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 300, height: 70, alignment: .center)
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
