//
//  SignupSignupRouter.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 25/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

class SignupRouter: SignupRouterInput {
    var tasksDashBoardRoute :TaskDashboardRouterInput!
    var viewController:  SignupViewController!
    
    func pushToTasksDashboard() {
        tasksDashBoardRoute.presentTaskDashBoardModule(fromViewController: viewController)
    }
    

}
