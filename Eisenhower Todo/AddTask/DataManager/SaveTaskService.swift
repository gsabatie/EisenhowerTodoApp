//
//  SaveTaskService.swift
//  Eisenhower Todo
//
//  Created by guillaume sabatié on 27/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation
import Firebase

class SaveTaskService {
    weak var output: SaveTaskServiceOutput!
    let db = Firestore.firestore()

    let tasksCollectionRef: CollectionReference

    init() {
        tasksCollectionRef = db.collection(CollectionDocumentKey.Task.rawValue)
    }
}

extension SaveTaskService: SaveTaskServiceInput {
    func updateTask(with id: String, and data: [String: Any]) {
        tasksCollectionRef.document(id).updateData(data) { [weak self] (error) in
            if let error = error {
                self?.output.updateTaskDidFail(message: error.localizedDescription)
            } else {
                self?.output.updateTaskDidSuccess()
            }
        }
    }

    func deleteTask(with id: String) {
        tasksCollectionRef.document(id).delete { [weak  self] (error) in
            if let error = error {
                self?.output.deleteTaskDidFail(message: error.localizedDescription)
            } else {
                self?.output.deleteTaskDidSuccess()
            }
        }
    }

    func createTask(with data: [String: Any]) {
        tasksCollectionRef.addDocument(data: data) { [weak self] (error) in
            if let error = error {
                self?.output.createTaskDidFail(message: error.localizedDescription)
            } else {
                self?.output.createTaskDidSuccess()
            }
        }
    }
}
