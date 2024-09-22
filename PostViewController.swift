//
//  PostViewController.swift
//  PetPals
//
//  Created by Stef Yaegel on 2/12/24.
//

import SwiftUI
import ASCollectionView

struct PostViewController: View {
    
    
    @ObservedObject var viewModel = PostViewModel()
    @Binding var name: String

    
    var postSections: ASTableViewSection <Int> {
        ASTableViewSection(id: 0, data: viewModel.posts) {
            post, _ in PostCell(post: post)
        }
    }
    
    
    var body: some View {
        NavigationView{

            ZStack{

                VStack{

                    ASTableView(section: postSections)
                        .navigationBarTitle("Feed")
                        .navigationBarTitleDisplayMode(.inline)
                      .toolbar {
                            ToolbarItem(placement: .navigationBarTrailing) {

                               NavigationLink(destination: UploadPhotos()) {
                                       Text("+")
                                      }
                               .fontWeight(.light)
                             .font(.system(size: 40))

                             }


                          }

                       }


                VStack{
                    
                    Text("")
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
//struct PostViewController_Previews: PreviewProvider {
//    static var previews: some View {
//        PostViewController()
//    }
//}
