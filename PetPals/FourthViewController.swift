//
//  FourthViewController.swift
//  PetPals
//
//  Created by Stef Yaegel on 2/12/24.
//

import SwiftUI

// Home Page

struct FourthViewController: View {
    
    @Binding var name: String
//    @Binding var petname: String

    var body: some View {
        
        
        NavigationStack{
            
        
        ZStack{
            
            // Placeholder for now
            // This is not functional yet
 
//            Image("Color")
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .frame(minWidth: 0, maxWidth: .infinity)
//                .edgesIgnoringSafeArea(.all)
//
        
            // Text("Home Page")
            
            
            
            VStack{
                
                Text("Welcome \(name)")
            
            // toolbar feature
                // toolbar feature
                        .toolbar {
                            ToolbarItemGroup(placement: .status) {
                                NavigationLink(destination: FourthViewController(name: $name)) {
                                    Image(systemName: "house")
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .navigationBarBackButtonHidden(true)
                                    
                                }
                                
                                NavigationLink(destination: PostViewController(name: $name)) {
                                    Image(systemName: "camera")
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .navigationBarBackButtonHidden(true)

                                    
                                }
                                
                                NavigationLink(destination: ProfileView(name: $name)) {
                                    Image(systemName: "person")
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                        .navigationBarBackButtonHidden(true)

                                    
                                }
                                
                            }
                        }
                    
                }
            }
            
        }
        .navigationBarBackButtonHidden(true)
        
    }
}
//
//struct FourthViewController_Previews: PreviewProvider {
//    static var previews: some View {
//
//        return FourthViewController()
//
//    }
//}
