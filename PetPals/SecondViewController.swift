//
//  SecondViewController.swift
//  PetPals
//
//  Created by Stef Yaegel on 2/8/24.
//

import SwiftUI

// Login/SignUp Page
struct SecondViewController: View {
    
//    @State private var email: String = ""
//    @State var username: String = ""
//    @State private var password: String = ""
//    @State var canLogin: Bool = false
    
    
    @StateObject var viewModel = UserDataViewModel()

    var body: some View {
        
        NavigationStack{
            
            ZStack{
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .edgesIgnoringSafeArea(.all)
                
                VStack{


                    VStack{

                        TextField("Username", text: $viewModel.name)
                            .textFieldStyle(.roundedBorder)
                            .textInputAutocapitalization(.never)
                            .disableAutocorrection(true)
                        
                        SecureField("Password", text: $viewModel.password)
                            .textFieldStyle(.roundedBorder)
                            .textInputAutocapitalization(.never)
                            .disableAutocorrection(true)
                        
                    }
                    .padding(.top, 300.0)


                  
                    // SignUp Page Navigation
                    NavigationLink(destination: FourthViewController(name: $viewModel.name)) {
                        Text("Login")
                    }
                    .foregroundColor(Color.white)
                    .font(.title3)
                    .foregroundColor(Color.black)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(hue: 1.0, saturation: 0.003, brightness: 0.997, opacity: 0.537))
                    .disabled(viewModel.password.isEmpty)
                    .disabled(viewModel.name.isEmpty)

                 
                    
                    
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        
    }
}

struct SecondViewController_Previews: PreviewProvider {
    static var previews: some View {
        SecondViewController()
    }
}

