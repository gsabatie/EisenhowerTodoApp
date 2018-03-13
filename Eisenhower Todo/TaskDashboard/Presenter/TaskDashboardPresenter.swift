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
    
    func onFetchTaskSuccess(_ tasks: [Task]) {
        
    }
    
    func onFetchTaskFailure(message: String) {
        
    }
    
    func onDeleteTaskSuccess() {
        
    }
    
    func onDeleteTaskFailure(message: String) {
        
    }
    
    
    weak var view: TaskDashboardViewInput!
    var interactor: TaskDashboardInteractorInput!
    var router: TaskDashboardRouterInput!



    func viewIsReady() {
        interactor.findAllTask()
    }
    
    func onTaskRetrieved(_ tasks: [Task]) {
        view.display(task: tasks)
    }
}
