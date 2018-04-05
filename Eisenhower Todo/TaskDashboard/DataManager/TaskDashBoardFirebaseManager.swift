//
//  TaskDashBoardFirebaseManager.swift
//  Eisenhower Todo
//
//  Created by Guillaume Sabatie on 14/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation
import Firebase


class TaskDashboardFirebaseManager {

    weak var output: TaskDashboardDataManagerOutput!
    let db = Firestore.firestore()

    let tasksCollectionRef: CollectionReference

    init() {
        tasksCollectionRef = db.collection(CollectionDocumentKey.Task.rawValue)
    }


    func getAllTaskDocuments(completion: @escaping (_ documents: [QueryDocumentSnapshot]?, _ err: Error?) -> Void) {
        tasksCollectionRef.getDocuments(completion: { querySnapshot, err in
            if let err = err {
                completion(nil, err)
            } else {
                completion(querySnapshot!.documents, nil)
            }
        })
    }
}

extension TaskDashboardFirebaseManager: TaskDashboardDataManagerInput {
    func getTasks() {
        getAllTaskDocuments { (documents, err) in
            if let err = err {
                self.output.onGetTaskError(err.localizedDescription)
            } else if let documents = documents {
                var tasks = [Task]()
                for document in documents {
                    var task = Task(dictionary: document.data())
                    task.id = document.documentID
                    tasks.append(task)
                    self.output.onGetTasks(tasks)
                }
            }
        }
    }

    func deleteTask(id: String) {
        tasksCollectionRef.document(id).delete() { err in
            if let err = err {
                self.output.onDeleteTaskError(err.localizedDescription)
            } else {
                self.output.onDeleteTask()
            }

        }
    }


}
