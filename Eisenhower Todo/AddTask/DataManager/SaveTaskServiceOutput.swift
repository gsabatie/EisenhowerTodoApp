//
//  SaveTaskServiceOutput.swift
//  Eisenhower Todo
//
//  Created by guillaume sabatié on 27/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation

protocol SaveTaskServiceOutput: class {
    func createTaskDidSuccess()
    func createTaskDidFail(message: String)

    func updateTaskDidSuccess()
    func updateTaskDidFail(message: String)

    func deleteTaskDidSuccess()
    func deleteTaskDidFail(message: String)
}
