//
//  FireBaseManager.swift
//  Eisenhower Todo
//
//  Created by Guillaume Sabatie on 11/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation
import Firebase

struct FireBaseManager : DataManagerInput{

    private let store = Firestore.firestore()
    
    
    func findAllTask() {
        
    }
    
    
    func getAllTask() -> [Task] {
        return [Task]()
    }
    
    func deleteTask(taskID: String) {
        
    }
    
    func add(task: Task) {
        
    }
    
    
}
