//
//  PostViewModel.swift
//  PetPals
//
//  Created by Gargi Yadav on 2/12/24.
//

import Foundation

class PostViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init(){
        let post1 = Post(id: 0, username: "steffiyaegs", caption: "puppy love<3", imageName: "Yorkie", location: "Miami", time: 4)
        
        let post2 = Post(id: 1, username: "steffiyaegs", caption: "Meet Eggo", imageName: "chick", location: "Coral Gables", time: 11)
        
        let post3 = Post(id: 2, username: "steffiyaegs", caption: "this bunnys got hops", imageName: "Bunny", location: "Coconut Grove", time: 32)
        
        let post4 = Post(id: 3, username: "steffiyaegs", caption: "newest edition to the family!", imageName: "Puppy", location: "Coral Gables", time: 49)

        posts.append(post1)
        posts.append(post2)
        posts.append(post3)
        posts.append(post4)
    }
    
}
