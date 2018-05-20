//
//  TaskDashboardTaskDashboardPresenter.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//
import Foundation
class TaskDashboardPresenter {


    weak var view: TaskDashboardViewInput!
    var interactor: TaskDashboardInteractorInput!
    var router: TaskDashboardRouterInput!
    var taskList = [Task]()


}

extension TaskDashboardPresenter: TaskDashboardModuleInput {

}

extension TaskDashboardPresenter: TaskDashboardViewOutput {
    func viewIsReady() {
        interactor.findAllTask()
    }

    func onAddButtonTouched() {
        router.presentAddTaskModule()
    }


    func onCollectionViewItemSwiped(at indexPath: IndexPath) {

    }

    func onCollectionViewItemSelected(at indexPath: IndexPath) {
        router.presentEditTaskModule(with: taskList[indexPath.row])
    }

    func onCollectionViewItemSelected() {

    }

    func onProfileButtonTouched() {
        router.presentUserProfilModule()
    }

}

extension TaskDashboardPresenter: TaskDashboardInteractorOutput {
    func onFetchTaskSuccess(_ tasks: [Task]) {
        view.endDisplayLoading()
        taskList = tasks
        view.display(task: tasks)

    }

    func onFetchTaskFailure(message: String) {
        view.endDisplayLoading()
    }

    func onDeleteTaskSuccess() {

    }

    func onDeleteTaskFailure(message: String) {

    }


}
