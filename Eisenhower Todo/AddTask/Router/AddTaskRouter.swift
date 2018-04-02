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

    func addTaskViewControllerFromStoryboard()-> AddTaskViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: KAddTaskViewControllerIdentifier) as! AddTaskViewController
        return viewController
    }

    func presentAddTaskModule(fromViewController viewController: UIViewController) {
        viewController.navigationController?.pushViewController(addTaskViewControllerFromStoryboard(), animated: true)
    }

    func pushTaskDashBoardModule() {
    }
}
