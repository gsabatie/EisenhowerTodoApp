//
//  TaskDashboardTaskDashboardPresenter.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

class TaskDashboardPresenter: TaskDashboardModuleInput, TaskDashboardViewOutput, TaskDashboardInteractorOutput {
    func onAddButtonTouched() {
        
    }
    
    func onCollectionViewItemSwiped() {
        
    }
    
    func onCollectionViewItemSelected() {
        
    }
    

    
    

    weak var view: TaskDashboardViewInput!
    var interactor: TaskDashboardInteractorInput!
    var router: TaskDashboardRouterInput!

    func viewIsReady() {

    }
    
    func onTaskRetrieved(_ tasks: [Task]) {
        
    }
  
}
