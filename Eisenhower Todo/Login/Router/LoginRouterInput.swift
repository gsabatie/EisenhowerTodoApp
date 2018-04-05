//
//  LoginLoginRouterInput.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 18/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import Foundation
import UIKit

protocol LoginRouterInput {
    func presentSignInModule(fromViewController viewController: UIViewController)
    func presentTaskDashBoardModule()
    func presentSignupModule()

}
