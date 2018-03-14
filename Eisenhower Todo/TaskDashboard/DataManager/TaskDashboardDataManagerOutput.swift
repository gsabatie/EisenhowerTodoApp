//
//  TaskDashboardDataManagerOutput.swift
//  Eisenhower Todo
//
//  Created by Guillaume Sabatie on 13/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation


protocol TaskDashboardDataManagerOutput : class{
    func onGetTasks(_ task:[Task])
    
    func onDeleteTask()
    
    func onError(_ error: String)
}
