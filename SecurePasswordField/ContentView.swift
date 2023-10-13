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
    
    // MARK: Properties
    @State private var password = "password"
    @State private var showPassword = true
    
    // MARK: Body
    
    /*
     Fix RoundedRectangle
     */
    var body: some View {
        
        VStack { // Start: VS
            
            // foreground
            foregroundLayer
            
        } // END: VS
        // background
        .preferredColorScheme(.dark)
    }
    
    private var foregroundLayer: some View {
        RoundedRectangle(cornerRadius: 50)
            .frame(width: 300, height: 70, alignment: .center)
            .foregroundColor(.gray)
        
        return HStack {
            if !showPassword {
                Spacer()
            }
            RoundedRectangle(cornerRadius: showPassword ? 25 : 50)
                .frame(width: showPassword ? 300 : 50, height: showPassword ? 75 : 50, alignment: .center)
                .animation(.linear(duration: 0.2))
                .padding(.trailing, showPassword ? 0 : 12)
        }
        
        HStack {
            
        }
    }
}

// MARK: Preview
#Preview {
    ContentView()
}
