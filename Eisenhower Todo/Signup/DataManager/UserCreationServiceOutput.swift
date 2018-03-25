//
//  UserCreationServiceOutput.swift
//  Eisenhower Todo
//
//  Created by guillaume sabatié on 25/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation

protocol UserCreationServiceOutput: class {
    func createUserDidFailed(message: String)
    func createUserDidSucceed()
}
