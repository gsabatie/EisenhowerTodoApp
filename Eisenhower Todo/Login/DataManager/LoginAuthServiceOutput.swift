//
//  LoginAuthServiceOutput.swift
//  Eisenhower Todo
//
//  Created by guillaume sabatié on 18/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation

protocol LoginAuthServiceOutput: class {
    func userAuthSuccess(user: AppUser)
    func userAuthFailure(message: String)
}
