//
//  SaveTaskServiceInput.swift
//  Eisenhower Todo
//
//  Created by guillaume sabatié on 27/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation

protocol SaveTaskServiceInput {
    func createTask(with data: [String: Any])
    func updateTask(with id: String, and data: [String: Any])

    func deleteTask(with id: String)
}
