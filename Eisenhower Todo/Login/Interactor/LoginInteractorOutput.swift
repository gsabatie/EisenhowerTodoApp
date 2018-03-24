//
//  LoginLoginInteractorOutput.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 18/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import Foundation


protocol LoginInteractorOutput: class {

    func didConnected(user : AppUser)
    func didFailSignin(withMessage: String)
}
