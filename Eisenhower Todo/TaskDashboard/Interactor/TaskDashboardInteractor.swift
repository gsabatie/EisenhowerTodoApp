//
//  TaskDashboardTaskDashboardInteractor.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

class TaskDashboardInteractor: TaskDashboardInteractorInput,DataManagerOutput {

    weak var output: TaskDashboardInteractorOutput!
    
    weak var dataSource: TaskDashboardDataManagerInput!
    
    
    func findAllTask() {
        
    }
    
    func delete(task: Task) {
        
    }
    
    func foundAllTask(task: [Task]) {
        
    }
    
    func getAllTask() -> [Task] {
        return [Task]()
    }
    
    func deleted(taskID: String) {
        
    }
    
    func added(task: Task) {
        
    }
    
}
