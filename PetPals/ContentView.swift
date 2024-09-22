//
//  ContentView.swift
//  PetPals
//
//  Created by Stef Yaegel on 2/8/24.
//

import SwiftUI

// User Choice Screen

struct ContentView: View {
    var body: some View {
        
        NavigationStack{
                        
            ZStack{
                
                Image("Login")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .edgesIgnoringSafeArea(.all)
       
                VStack {
                    
                    // Add Logo Image here
                    
                    
                    // Login Page Navigation
                    NavigationLink(destination: SecondViewController()) {
                        Text("Login")
                    }
                    .padding(.top, 150.0)
                    .foregroundColor(Color.white)
                    .font(.title3)
                    .foregroundColor(Color.black)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(hue: 1.0, saturation: 0.003, brightness: 0.997, opacity: 0.537))
                    
                    
                    // Login Page Navigation
                    NavigationLink(destination: ThirdViewController()) {
                        Text("Create an Account")
                    }
                    .foregroundColor(Color.white)
                    .padding()
                    .font(.title3)
                    .foregroundColor(Color.black)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(hue: 1.0, saturation: 0.003, brightness: 0.997, opacity: 0.537))
                    
                    
                    
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.4))

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
