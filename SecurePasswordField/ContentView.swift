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
        
        ZStack { // Start: VS
            
            // foreground
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 300, height: 70, alignment: .center)
                .foregroundColor(.gray)
            
            HStack {
                if !showPassword {
                    Spacer()
                }
                RoundedRectangle(cornerRadius: showPassword ? 25 : 50)
                    .frame(width: showPassword ? 300 : 50, height: showPassword ? 75 : 50, alignment: .center)
                    .animation(.linear(duration: 0.2))
                    .padding(.trailing, showPassword ? 0 : 12)
            }
            
            HStack {
                if !showPassword {
                    TextField("password", text: $password)
                        .font(.system(size: 15, weight: .semibold, design: .serif))
                        .padding(.leading, 20)
                        .foregroundColor(.black)
                } else {
                    SecureField("Password", text: $password)
                        .padding(.leading, 20)
                }
                Spacer()
                
                Image(systemName: showPassword ? "eye" : "eye,slash")
                    .resizable()
                    .frame(width: 35, height: 20)
                    .font(.system(size: 15, weight: .bold, design: .serif))
            }
        } // END: VS
        // background
        .preferredColorScheme(.dark)
    }
}
// MARK: Preview
#Preview {
    ContentView()
}


