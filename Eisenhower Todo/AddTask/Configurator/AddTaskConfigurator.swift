//
//  AddTaskAddTaskConfigurator.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 27/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import UIKit

class AddTaskModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? AddTaskViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: AddTaskViewController) {

        let router = AddTaskRouter()
        let saveTaskService = SaveTaskService()

        let presenter = AddTaskPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = AddTaskInteractor()
        interactor.output = presenter
        saveTaskService.output = interactor

        interactor.addTaskService = saveTaskService
        presenter.interactor = interactor
        viewController.output = presenter
    }

}
