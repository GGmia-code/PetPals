//
//  ProfileView.swift
//  PetPals
//
//  Created by Stef Yaegel on 2/12/24.
//

import SwiftUI

struct ProfileView: View {
    
    @Binding var name: String
    
    var body: some View {
        
        NavigationStack{
            
            ScrollView{
                
                ZStack{
                    
                    
                    VStack{
                        
                        VStack{
                            Image("ProfilePic")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 130, height: 130)
                                .padding(22)
                                .padding(.top)
                            
                            Image(systemName: "checkmark.seal.fill")
                                .font(.system(size: 33))
                                .foregroundColor(.green)
                                .offset(x: 70, y: -100)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        
                        VStack{
                            
                            Text("\(name)")
                                .font(.title)
                                .fontWeight(.bold)
                                .offset(x: 35, y: -40)
                            
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        
                        VStack{
                        
                            Text("Enjoys long walks at the park, \nplaying fetch, and walking \non the kitchen table")
                                .font(.system(size: 15))
                                .fontWeight(.light)
                                .foregroundColor(.gray)
                                .offset(x: 35, y: -40)
                            
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        
                        
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
        
        }
        .navigationBarBackButtonHidden(true)

        
    }
}

//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView()
//    }
//}
