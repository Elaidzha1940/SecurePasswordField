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
                .frame(width: 300, height: 75, alignment: .center)
                .foregroundColor(.gray)
            
            HStack {
                if !showPassword {
                    Spacer()
                }
                RoundedRectangle(cornerRadius: showPassword ? 25   : 50)
                    .frame(width: showPassword ? 300 : 50, height: showPassword ? 75 : 50, alignment: .center)
                withAnimation(.easeInOut(duration: 0.3)){

                }
                .padding(.trailing, showPassword ? 0 : 10)
            }
            
            HStack {
                if showPassword {
                    TextField("password", text: $password)
                        .font(.system(size: 15, weight: .semibold, design: .serif))
                        .padding(.leading, 20)
                        .foregroundColor(.black)
                } else {
                    SecureField("Password", text: $password)
                        .padding(.leading, 20)
                }
                Spacer()
                
                Image(systemName: showPassword ? "eye" : "eye.slash")
                    .resizable()
                    .frame(width: 30, height: 20)
                    .font(.system(size: 15, weight: .bold, design: .serif))
                    .foregroundColor(.black)
                    .padding(.trailing, 20)
                    .onTapGesture {
                        showPassword.toggle()
                    }
            }
        } // END: VS
        // background
    }
}
// MARK: Preview
#Preview {
    ZStack {
        ContentView()
            .frame(width: 300)
            .preferredColorScheme(.dark)
    }
}


