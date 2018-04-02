//
//  AddTaskAddTaskPresenter.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 27/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

class AddTaskPresenter {

    weak var view: AddTaskViewInput!
    var interactor: AddTaskInteractorInput!
    var router: AddTaskRouterInput!

    var isTaskImportant = false
    var task:Task?

    func viewIsReady() {
        if let task = task {
            view.setup(with: task)
        }
    }
}

extension  AddTaskPresenter: AddTaskModuleInput {

}
extension  AddTaskPresenter: AddTaskViewOutput {
    func saveButtonDidTouch() {
        if let name = view.getTaskName(), let dueDate = view.getTaskDueDate() {
            var taskID = KNEWTASKID
            var ownerID = KNEWTASKID
            if let task = task {
                taskID = task.id
                ownerID = task.ownerID
            }
            var newTask = Task(id: taskID, ownerID: ownerID, name: name, contentDescription: "", rolesArray: [Role](), dueDate: dueDate, isImportant: isTaskImportant, isUrgent: false)
            if let description = view.getTaskDescription() {
                    newTask.contentDescription = description
            }
            interactor.save(task: newTask)
        }
    }

    func deleteButtonDidTouch() {
         guard let task = task  else {
             // output to show can't delete
             return
         }
        interactor.delete(task: task)
    }

    func importantButtonDidTouch() {
        isTaskImportant = !isTaskImportant
    }
}

extension AddTaskPresenter: AddTaskInteractorOutput {
    func saveTaskDidSucced() {
        // go to dashboard
    }

    func saveTaskDidFail(message: String) {
        // show error
    }

    func deleteTaskDidSucced() {
        // go to dashboard
    }

    func deleteTaskDidFail(message: String) {
        // show error
    }
}
