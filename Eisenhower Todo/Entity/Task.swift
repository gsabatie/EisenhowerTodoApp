//
//  Task.swift
//  Eisenhower Todo
//
//  Created by Guillaume Sabatie on 25/02/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation

let KNEWTASKID = "newtask"

struct Role {
    var userID: String
    var role: String
}

struct Task {
    var id: String
    var ownerID: String
    var name: String
    var contentDescription: String
    var rolesArray: [Role]
    var dueDate: Date
    var isImportant: Bool
    var isUrgent: Bool

}

protocol DictionaryInitiable {
    init(dictionary: [String: Any])
}

extension Task: DictionaryInitiable {
    init(dictionary: [String: Any]) {
        self.id = ""
        self.name = ""
        self.contentDescription = ""
        self.dueDate = Date()
        self.isImportant = false
        self.isUrgent = false
        self.ownerID = ""
        self.rolesArray = [Role]()

        if let name = dictionary[TaskDocumentKey.Name.rawValue] as? String,
           let dueDate = dictionary[TaskDocumentKey.DueDate.rawValue] as? Date,
           let isImportant = dictionary[TaskDocumentKey.IsImportant.rawValue] as? Bool,
           let isUrgent = dictionary[TaskDocumentKey.IsUrgent.rawValue] as? Bool {
            self.name = name
            self.dueDate = dueDate
            self.isImportant = isImportant
            self.isUrgent = isUrgent
        }
        if let description = dictionary[TaskDocumentKey.Description.rawValue] as? String {
            self.contentDescription = description
        }
    }
}

extension Task {
    var propertyAsDictionary: [String: Any] {
        var dataDictionary = [String: Any]()
        dataDictionary[TaskDocumentKey.Name.rawValue] = self.name
        dataDictionary[TaskDocumentKey.Description.rawValue] = contentDescription
        dataDictionary[TaskDocumentKey.DueDate.rawValue] = dueDate
        dataDictionary[TaskDocumentKey.IsImportant.rawValue] = isImportant
        dataDictionary[TaskDocumentKey.IsUrgent.rawValue] = isUrgent
        dataDictionary[TaskDocumentKey.ownerID.rawValue] = ownerID
        dataDictionary[TaskDocumentKey.roles.rawValue] = rolesArray
        return dataDictionary
    }
}