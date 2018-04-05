//
//  LoginLoginConfigurator.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 18/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import UIKit

class LoginModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? LoginViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: LoginViewController) {


        let router = LoginRouter()
        router.tasksDashBoardRoute = TaskDashboardRouter()
        router.signupRoute = SignupRouter()
        router.viewController = viewController

        let presenter = LoginPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = LoginInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter

        let loginService = AuthLoginService()
        loginService.output = interactor

        interactor.loginService = loginService

    }

}
