//
//  AddTaskAddTaskRouter.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 27/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import UIKit

let KAddTaskViewControllerIdentifier = "addTaskVC"

class AddTaskRouter: AddTaskRouterInput {
    var viewController: AddTaskViewController!
    var taskDashBoardRouter: TaskDashboardRouter!
    var addTaskmoduleInput: AddTaskModuleInput!

    func addTaskViewControllerFromStoryboard() -> AddTaskViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: KAddTaskViewControllerIdentifier) as! AddTaskViewController
        return viewController
    }

    func presentAddTaskModule(fromViewController viewController: UIViewController) {
        viewController.navigationController?.pushViewController(addTaskViewControllerFromStoryboard(), animated: true)
    }

    func presentAddTaskModule(with task: Task, fromViewController viewController: UIViewController) {
        self.viewController = addTaskViewControllerFromStoryboard()

        let saveTaskService = SaveTaskService()

        let presenter = AddTaskPresenter()
        presenter.view = self.viewController
        presenter.router = self
        self.viewController.output = presenter

        let interactor = AddTaskInteractor()
        interactor.output = presenter
        interactor.addTaskService = saveTaskService

        saveTaskService.output = interactor
        presenter.interactor = interactor

        presenter.present(with: task)

        viewController.navigationController?.pushViewController(addViewController, animated: true)
    }

    func pushTaskDashBoardModule() {
        viewController.navigationController?.popViewController(animated: true)
    }
}
