//
//  SignupSignupRouter.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 25/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import UIKit

let KSignUpViewControllerIdentifier = "signupVC"

class SignupRouter: SignupRouterInput {


    var tasksDashBoardRoute: TaskDashboardRouterInput!
    var loginRouter: LoginRouter!
    var viewController: SignupViewController!

    func signupViewControllerFromStoryboard() -> SignupViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: KSignUpViewControllerIdentifier) as! SignupViewController
        return viewController
    }

    func pushToTasksDashboard() {
        tasksDashBoardRoute.presentTaskDashBoardModule(fromViewController: viewController)
    }

    func presentLoginModule() {
        loginRouter.presentSignInModule(fromViewController: viewController)
    }

    func present(from viewController: UIViewController) {
        viewController.navigationController?.pushViewController(signupViewControllerFromStoryboard(), animated: true)
    }
}
