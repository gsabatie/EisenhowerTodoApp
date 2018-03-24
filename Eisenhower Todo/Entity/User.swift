//
//  User.swift
//  Eisenhower Todo
//
//  Created by guillaume sabatié on 18/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation
import FirebaseAuth

struct AppUser {
    var id:                 String
    var login:              String
    var bio:                String
    var email:              String
    var profilePictureURL:  String
}

extension AppUser {
    init(firebaseUser:User) {
        login = ""
        bio = ""
        self.email = ""
        self.profilePictureURL = ""
        id = firebaseUser.uid
        if let email = firebaseUser.email, let profilePictureURL = firebaseUser.photoURL {
            self.email = email
            self.profilePictureURL = profilePictureURL.absoluteString
        }
        
    }
}
