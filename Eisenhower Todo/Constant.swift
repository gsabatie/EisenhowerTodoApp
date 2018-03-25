//
//  Constant.swift
//  Eisenhower Todo
//
//  Created by Guillaume Sabatie on 14/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation

enum TaskDocumentKey: String {
    case Name = "name"
    case Description = "description"
    case DueDate = "dueDate"
    case IsImportant = "isImportant"
    case IsUrgent = "isUrgent"
    case ownerID = "ownerID"
    case roles = "roles"
}

enum UserDocumentKey: String {
    case id = "id"
    case Username = "username"
    case Description = "description"
    case Email = "email"
}


enum CollectionDocumentKey: String {
    case Task = "tasks"
    case User = "users"
}
