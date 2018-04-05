//
//  AddTaskAddTaskInteractorInput.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 27/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import Foundation

protocol AddTaskInteractorInput {
    func save(task: Task)
    func delete(task: Task)
}
