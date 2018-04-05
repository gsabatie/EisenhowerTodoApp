//
//  FirbaseManagerInput.swift
//  Eisenhower Todo
//
//  Created by Guillaume Sabatie on 11/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation

protocol DataManagerInput {
    func findAllTask()
    func getAllTask() -> [Task]

    func deleteTask(taskID: String)

    func add(task: Task)
}
