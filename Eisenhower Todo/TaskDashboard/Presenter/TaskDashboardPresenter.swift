//
//  TaskDashboardTaskDashboardPresenter.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

class TaskDashboardPresenter  {

    
    
    weak var view: TaskDashboardViewInput!
    var interactor: TaskDashboardInteractorInput!
    var router: TaskDashboardRouterInput!



}

extension TaskDashboardPresenter: TaskDashboardModuleInput {
    
}

extension TaskDashboardPresenter: TaskDashboardViewOutput {
    func viewIsReady() {
        interactor.findAllTask()
    }
    
    func onAddButtonTouched() {
        
    }
    
    func onCollectionViewItemSwiped() {

    }
    
    func onCollectionViewItemSelected() {
        
    }
    
    
}

extension TaskDashboardPresenter:TaskDashboardInteractorOutput {
    func onFetchTaskSuccess(_ tasks: [Task]) {
         view.endDisplayLoading()
        view.display(task: tasks)
       
    }
    
    func onFetchTaskFailure(message: String) {
        
    }
    
    func onDeleteTaskSuccess() {
        
    }
    
    func onDeleteTaskFailure(message: String) {
        
    }
    
    
}
