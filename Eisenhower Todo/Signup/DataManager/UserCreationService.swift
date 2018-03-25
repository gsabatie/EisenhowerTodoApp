//
//  UserCreationService.swift
//  Eisenhower Todo
//
//  Created by guillaume sabatié on 25/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth


class UserService {
    var output : UserCreationServiceOutput!
    let db = Firestore.firestore()
    
    let usersCollectionRef : CollectionReference
    
    init() {
         usersCollectionRef = db.collection(CollectionDocumentKey.User.rawValue)
    }
}

extension UserService : UserCreationServiceInput {
    func createUser(username: String, email: String, password: String, description: String?) {
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            if let error = error {
                self.output.createUserDidFailed(message: error.localizedDescription)
            } else if let user = user {
                self.usersCollectionRef.document(user.uid).setData([
                                        UserDocumentKey.Email.rawValue: email,
                                        UserDocumentKey.Username.rawValue: "CA",
                                        UserDocumentKey.Description.rawValue: description ?? ""
                                        ])
                self.output.createUserDidSucceed()
            }
        }
    }
    
    
}
