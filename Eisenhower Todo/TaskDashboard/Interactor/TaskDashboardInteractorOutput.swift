//
//  TaskDashboardTaskDashboardInteractorOutput.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import Foundation

protocol TaskDashboardInteractorOutput: class {
    func onFetchTaskSuccess(_ tasks: [Task])
    func onFetchTaskFailure(message: String)

    func onDeleteTaskSuccess()
    func onDeleteTaskFailure(message: String)
}
