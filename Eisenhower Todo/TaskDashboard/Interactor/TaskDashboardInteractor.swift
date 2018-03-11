//
//  TaskDashboardTaskDashboardInteractor.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

class TaskDashboardInteractor: TaskDashboardInteractorInput {

    weak var output: TaskDashboardInteractorOutput!
    let tasks = [Task]()
    
    func findAllTask() {
        output.onTaskRetrieved(tasks)
    }
}
