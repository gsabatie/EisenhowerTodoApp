//
//  TaskDashboardDataMangerInput.swift
//  Eisenhower Todo
//
//  Created by Guillaume Sabatie on 13/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation

protocol TaskDashboardDataManagerInput: class {
    func getTasks()
    
    func deleteTask(id: String)
}
