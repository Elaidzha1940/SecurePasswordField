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
                .frame(width: 350, height: 75, alignment: .center)
                .foregroundColor(.gray)
            
            HStack { // Start: 1st HS
                if !showPassword {
                    Spacer()
                }
                RoundedRectangle(cornerRadius: showPassword ? 25 : 50)
                    .frame(width: showPassword ? 350 : 50, height: showPassword ? 75 : 50, alignment: .center)
                //.animation(.linear(duration: 0.3))
                    .padding(.trailing, showPassword ? 0 : 10)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            showPassword.toggle()
                        }
                    }
            } // END: 1st HS
        
            HStack { // Start: 2nd HS
                if showPassword {
                    TextField("password", text: $password)
                        .font(.system(size: 15, weight: .bold, design: .rounded))
                        .padding(.leading, 20)
                        .foregroundColor(.black)
                } else {
                    SecureField("Password", text: $password)
                        .padding(.leading, 20)
                }
                Spacer()
                
                Image(systemName: showPassword ? "eye" : "eye.slash")
                    .resizable()
                    .frame(width: 30, height: 25)
                    .font(.system(size: 15, weight: .bold, design: .rounded))
                    .foregroundColor(.black)
                    .padding(.trailing, 20)
                    .onTapGesture {
                        withAnimation {
                            showPassword.toggle()
                        }
                    }
            } // END: 2nd HS
        } // END: VS
        // background
        .preferredColorScheme(.dark)
        .frame(width: 350)

    }
}
// MARK: Preview
#Preview {
        ContentView()
}


