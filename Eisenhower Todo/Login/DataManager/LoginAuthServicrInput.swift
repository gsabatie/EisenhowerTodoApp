//
//  LoginAuthServicrInput.swift
//  Eisenhower Todo
//
//  Created by guillaume sabatié on 18/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation

protocol LoginAuthServiceInput {
    func userauth(withEmail email: String, andPassword password:String)
}
