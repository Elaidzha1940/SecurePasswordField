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
        
    }
}

// MARK: Preview
#Preview {
    ContentView()
}
