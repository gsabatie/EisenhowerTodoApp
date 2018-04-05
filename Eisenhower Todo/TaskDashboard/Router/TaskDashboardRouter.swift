//
//  TaskDashboardTaskDashboardRouter.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import UIKit

let kTaskDashboardViewController = "taskDashBoardVC"
let kMainNavigationController = "mainNC"

class TaskDashboardRouter {


    var viewController: TaskDashboardViewController!
    var addTaskRouter: AddTaskRouter!
    var profileTaskRouter: SignupRouter!

    func taskDashboardViewControllerFromStoryboard() -> TaskDashboardViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: kTaskDashboardViewController) as! TaskDashboardViewController
        return viewController
    }

    func mainNavigationControllerFromStoryboard() -> UINavigationController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let navigationController = storyboard.instantiateViewController(withIdentifier: kMainNavigationController) as! UINavigationController
        return navigationController
    }

}

extension TaskDashboardRouter: TaskDashboardRouterInput {

    func popToTaskDashBoardModule(fromViewController viewController: UIViewController) {
        viewController.navigationController?.popToViewController(taskDashboardViewControllerFromStoryboard(), animated: true)
    }

    func presentTaskDashBoardModule(fromViewController viewController: UIViewController) {
        viewController.present(mainNavigationControllerFromStoryboard(), animated: true)
    }

    func presentAddTaskModule() {
        addTaskRouter.presentAddTaskModule(fromViewController: viewController)
    }

    func presentUserProfilModule() {
        profileTaskRouter.present(from: viewController)
    }
}
