//
//  TaskDashboardTaskDashboardRouterInput.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import Foundation
import UIKit

protocol TaskDashboardRouterInput {
    func presentTaskDashBoardModule(fromViewController viewController: UIViewController)

    func presentAddTaskModule()

    func presentUserProfilModule()

    func popToTaskDashBoardModule(fromViewController viewController: UIViewController)

}
