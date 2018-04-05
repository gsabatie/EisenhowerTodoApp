//
//  UserCreationServiceInput.swift
//  Eisenhower Todo
//
//  Created by guillaume sabatié on 25/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation

protocol UserCreationServiceInput {
    func createUser(username: String, email: String, password: String, description: String?)
    func getSignedUser()
    func logoutSignedUser()
}
