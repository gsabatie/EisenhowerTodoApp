//
//  TaskDashboardTaskDashboardInteractor.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

class TaskDashboardInteractor {

    weak var output: TaskDashboardInteractorOutput!

    var dataSource: TaskDashboardDataManagerInput!


}


extension TaskDashboardInteractor: TaskDashboardInteractorInput {
    func findAllTask() {
        dataSource.getTasks()
    }

    func delete(task: Task) {
        dataSource.deleteTask(id: task.id)
    }
}


extension TaskDashboardInteractor: TaskDashboardDataManagerOutput {
    func onGetTaskError(_ message: String) {
        output.onFetchTaskFailure(message: message)
    }

    func onDeleteTaskError(_ message: String) {
        output.onFetchTaskFailure(message: message)
    }

    func onGetTasks(_ task: [Task]) {
        output.onFetchTaskSuccess(task)
    }

    func onDeleteTask() {
        output.onDeleteTaskSuccess()
    }
}
