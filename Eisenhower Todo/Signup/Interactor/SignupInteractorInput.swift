//
//  SignupSignupInteractorInput.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 25/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import Foundation

protocol SignupInteractorInput {
    func create(user: AppUser, withPassword password: String)
}
