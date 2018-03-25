//
//  TaskDashboardTaskDashboardRouter.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//
import UIKit

let kTaskDashboardViewController = "taskDashBoardVC"

class TaskDashboardRouter{
    

    var viewController: TaskDashboardViewController!
    
    func taskDashboardViewControllerFromStoryboard()-> TaskDashboardViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: kTaskDashboardViewController) as! TaskDashboardViewController
        return viewController
    }
 

}

extension TaskDashboardRouter :TaskDashboardRouterInput {
    
    func presentTaskDashBoardModule(fromViewController viewController: UIViewController) {
        viewController.present(taskDashboardViewControllerFromStoryboard(), animated: true, completion: nil)
    }
    
    func presentAddTaskModule() {
        
    }
    
    func presentUserProfilModule() {
        
    }
}
