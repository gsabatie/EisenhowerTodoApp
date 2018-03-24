//
//  LoginLoginRouter.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 18/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//
import UIKit

let KLoginViewControllerIdentifier = "loginVC"

class LoginRouter{
  
    
    var tasksDashBoardRoute :TaskDashboardRouterInput!
    
    var viewController: LoginViewController!
    
    func loginViewControllerFromStoryboard()->LoginViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: KLoginViewControllerIdentifier) as! LoginViewController
        return viewController
    }
    
}

extension LoginRouter  : LoginRouterInput {

    func presentSignInModule(fromViewController viewController: UIViewController) {
        viewController.present(loginViewControllerFromStoryboard(), animated: true, completion: nil)
    }
    
    func presentTaskDashBoardModule() {
        tasksDashBoardRoute.presentTaskDashBoardModule(fromViewController: self.viewController)
    }
    
    
}
