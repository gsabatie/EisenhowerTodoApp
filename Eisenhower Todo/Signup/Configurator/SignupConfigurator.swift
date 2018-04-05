//
//  SignupSignupConfigurator.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 25/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import UIKit

class SignupModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? SignupViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: SignupViewController) {

        let router = SignupRouter()

        let userService = UserService()


        let presenter = SignupPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = SignupInteractor()
        interactor.output = presenter
        interactor.userService = userService

        userService.output = interactor
        presenter.interactor = interactor
        viewController.output = presenter
        router.viewController = viewController
        router.tasksDashBoardRoute = TaskDashboardRouter()
        router.loginRouter = LoginRouter()
    }

}
