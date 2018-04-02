//
//  AddTaskAddTaskViewInput.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 27/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//
import Foundation

protocol AddTaskViewInput: class {

    /**
        @author Guillaume Sabatie
        Setup initial state of the view
    */

    func setupInitialState()
    func setup(with task: Task)
    func getTaskName() -> String?
    func getTaskDescription() -> String?
    func getTaskDueDate() -> Date?

}
