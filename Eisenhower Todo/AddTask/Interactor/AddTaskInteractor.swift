//
//  AddTaskAddTaskInteractor.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 27/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

class AddTaskInteractor {

    var addTaskService: SaveTaskServiceInput!
    weak var output: AddTaskInteractorOutput!

}

extension AddTaskInteractor: AddTaskInteractorInput {
    func save(task: Task) {
        if task.id == KNEWTASKID {
            addTaskService.createTask(with: task.propertyAsDictionary)
        } else {
            addTaskService.updateTask(with: task.id, and: task.propertyAsDictionary)
        }
    }

    func delete(task: Task) {
        addTaskService.deleteTask(with: task.id)
    }

}

extension AddTaskInteractor: SaveTaskServiceOutput {
    func createTaskDidSuccess() {
        output.saveTaskDidSucced()
    }

    func createTaskDidFail(message: String) {
        output.saveTaskDidFail(message: message)
    }

    func updateTaskDidSuccess() {
        output.saveTaskDidSucced()
    }

    func updateTaskDidFail(message: String) {
        output.saveTaskDidFail(message: message)
    }

    func deleteTaskDidSuccess() {
        output.deleteTaskDidSucced()
    }

    func deleteTaskDidFail(message: String) {
        output.deleteTaskDidFail(message: message)
    }
}