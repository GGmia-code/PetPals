//
//  ThirdViewController.swift
//  PetPals
//
//  Created by Stef Yaegel on 2/12/24.
//

import SwiftUI

struct ThirdViewController: View {
    
//    @State private var email: String = ""
//    @State var username: String = ""
//    @State private var dob: String = ""
//    @State private var petsname: String = ""
//    @State private var password: String = ""
    
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
                        TextField("Email", text: $viewModel.email)
                            .textInputAutocapitalization(.never)
                            .disableAutocorrection(true)
                        
                        TextField("Username", text: $viewModel.name)
                            .textInputAutocapitalization(.never)
                            .disableAutocorrection(true)
                        
                        TextField("Pet Name", text: $viewModel.petname)
                            .textInputAutocapitalization(.never)
                            .disableAutocorrection(true)
                        
                        TextField("Date of Birth", text: $viewModel.dob)
                            .textInputAutocapitalization(.never)
                            .disableAutocorrection(true)
                        
                        SecureField("Password", text: $viewModel.password)
                            .textInputAutocapitalization(.never)
                            .disableAutocorrection(true)
                        
                    }
                    .padding(.top, 350.0)
                    .textFieldStyle(.roundedBorder)
                    
                    
                    // SignUp Page Navigation
                    NavigationLink(destination: FourthViewController(name: $viewModel.name)) {
                        Text("Sign Up")
                    }
                    .foregroundColor(Color.white)
                    .font(.title3)
                    .foregroundColor(Color.black)
                    .buttonStyle(.borderedProminent)
                    .tint(Color(hue: 1.0, saturation: 0.003, brightness: 0.997, opacity: 0.537))
                    .disabled(viewModel.email.isEmpty)
                    .disabled(viewModel.password.isEmpty)
                    .disabled(viewModel.name.isEmpty)
                    .disabled(viewModel.petname.isEmpty)
                    .disabled(viewModel.dob.isEmpty)
                    
                    
                    
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        
    }
}

struct ThirdViewController_Previews: PreviewProvider {
    static var previews: some View {
        ThirdViewController()
    }
}
