//
//  UserData.swift
//  PetPals
//
//  Created by Stef Yaegel on 2/29/24.
//

import SwiftUI

class UserDataViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
    @Published var dob: String = ""
    @Published var petname: String = ""
    @Published var password: String = ""

}
