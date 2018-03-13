//
//  Task.swift
//  Eisenhower Todo
//
//  Created by Guillaume Sabatie on 25/02/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation


struct Task {
    var id:                 String
    var title:              String
    var contentDescription: String
    var dueDate:            Date
    var isImportant:        Bool
    var isUrgent:           Bool
}
