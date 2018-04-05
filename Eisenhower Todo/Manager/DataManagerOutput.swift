//
//  DataManagerOutput.swift
//  Eisenhower Todo
//
//  Created by Guillaume Sabatie on 12/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation


protocol DataManagerOutput: class {
    func foundAllTask(task: [Task])

    func getAllTask() -> [Task]

    func deleted(taskID: String)

    func added(task: Task)
}
