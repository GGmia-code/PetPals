//
//  Post.swift
//  PetPals
//
//  Created by Stef Yaegel on 2/12/24.
//

import Foundation

// post object to populate cells with a post
struct Post: Identifiable {
    let id:Int
    let username: String
    let caption: String
    let imageName: String
    let location: String
    let time: Int
}
