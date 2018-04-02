//
//  SignupSignupRouterInput.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 25/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import Foundation
import UIKit

protocol SignupRouterInput {
    func pushToTasksDashboard()
    func present(from viewController: UIViewController)
}
