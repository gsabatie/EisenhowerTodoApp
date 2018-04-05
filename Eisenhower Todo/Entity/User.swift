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
    var id: String
    var login: String
    var bio: String
    var email: String
    var profilePictureURL: String
}

extension AppUser: DictionaryInitiable {
    init(dictionary: [String: Any]) {
        id = ""
        login = ""
        bio = ""
        email = ""
        profilePictureURL = ""
        if let login = dictionary[UserDocumentKey.Username.rawValue] as? String,
           let email = dictionary[UserDocumentKey.Email.rawValue] as? String {
            self.login = login
            self.email = email
        }
        if let bio = dictionary[UserDocumentKey.Description.rawValue] as? String {
            self.bio = bio
        }
    }
}

extension AppUser {
    init(firebaseUser: User) {
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
