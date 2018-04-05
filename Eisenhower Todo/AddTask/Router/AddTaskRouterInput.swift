//
//  AddTaskAddTaskRouterInput.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 27/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import Foundation
import UIKit

protocol AddTaskRouterInput {
    func presentAddTaskModule(fromViewController viewController: UIViewController)
    func pushTaskDashBoardModule()
}
