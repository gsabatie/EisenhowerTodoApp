//
//  TaskDashboardTaskDashboardConfigurator.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import UIKit

class TaskDashboardModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? TaskDashboardViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: TaskDashboardViewController) {

        let router = TaskDashboardRouter()

        let presenter = TaskDashboardPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = TaskDashboardInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
