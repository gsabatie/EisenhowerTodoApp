//
//  LoginLoginInteractorInput.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 18/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import Foundation

struct UserCredential {
    var email: String
    var password: String
}

protocol LoginInteractorInput {

    func signInUser(withUserCredential: UserCredential)
    func requestNewPassword()
}
