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
}

enum UserDocumentKey: String {
    case id = "id"
    case login = "login"
    case bio = "bio"
    case email = "email"
    case profilePictureURL = ""
    case task = "task"
}


enum CollectionDocumentKey: String {
    case Task = "task"
    case User = "user"
}
