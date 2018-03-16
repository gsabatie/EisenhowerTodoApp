//
//  User.swift
//  Eisenhower Todo
//
//  Created by Guillaume Sabatie on 17/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation

struct User {
    var id:                 String
    var login:              String
    var bio:                String
    var email:              String
    var profilePictureURL:  String
    var tasks:              [Task]
}


extension User : DictionaryInitiable {
    init(dictionary: [String: Any]) {
        self.id = ""
        self.login = ""
        self.bio = ""
        self.email = ""
        self.profilePictureURL = ""
        self.tasks = [Task]()
        //TO DO instanciate class
        
    }
}
