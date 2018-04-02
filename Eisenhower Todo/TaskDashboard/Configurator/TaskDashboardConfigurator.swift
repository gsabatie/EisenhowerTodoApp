//
//  TaskDashboardTaskDashboardConfigurator.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import UIKit
import Firebase

class TaskDashboardModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? TaskDashboardViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: TaskDashboardViewController) {

        let router = TaskDashboardRouter()
        router.addTaskRouter = AddTaskRouter()
        router.profileTaskRouter = SignupRouter()
        router.viewController = viewController

        let presenter = TaskDashboardPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = TaskDashboardInteractor()
        interactor.output = presenter

        let firebaseDatasource = TaskDashboardFirebaseManager()
        firebaseDatasource.output = interactor
        
        interactor.dataSource = firebaseDatasource
        presenter.interactor = interactor
        viewController.output = presenter
    }

}
