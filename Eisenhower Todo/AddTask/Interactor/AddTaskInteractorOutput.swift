//
//  AddTaskAddTaskInteractorOutput.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 27/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import Foundation

protocol AddTaskInteractorOutput: class {
    func saveTaskDidSucced()
    func saveTaskDidFail(message: String)
    
    func deleteTaskDidSucced()
    func deleteTaskDidFail(message: String)
}
