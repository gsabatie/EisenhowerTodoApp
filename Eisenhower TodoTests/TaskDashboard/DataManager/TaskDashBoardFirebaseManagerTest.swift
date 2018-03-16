//
//  TaskDashBoardFirebaseManagerTest.swift
//  Eisenhower TodoTests
//
//  Created by Guillaume Sabatie on 14/03/2018.
//  Copyright © 2018 Guillaume Sabatie. All rights reserved.
//

import Foundation
import Quick
import Nimble
import Firebase
@testable import Eisenhower_Todo


class TaskDashboardFirebaseManagerSpec: QuickSpec {
    
    var taskDocumentTest: [[String: Any]] {
        return [
            [TaskDocumentKey.Name.rawValue : "task 1",
             TaskDocumentKey.Description.rawValue : "task description",
             TaskDocumentKey.DueDate.rawValue : Date(),
             TaskDocumentKey.IsImportant.rawValue : false,
             TaskDocumentKey.IsUrgent.rawValue : false
            ],
            [TaskDocumentKey.Name.rawValue : "task 2",
             TaskDocumentKey.Description.rawValue : "task description",
             TaskDocumentKey.DueDate.rawValue : Date(),
             TaskDocumentKey.IsImportant.rawValue : false,
             TaskDocumentKey.IsUrgent.rawValue : false
            ],
            [TaskDocumentKey.Name.rawValue : "task 3",
             TaskDocumentKey.Description.rawValue : "task description",
             TaskDocumentKey.DueDate.rawValue : Date(),
             TaskDocumentKey.IsImportant.rawValue : false,
             TaskDocumentKey.IsUrgent.rawValue : false
            ],
            [TaskDocumentKey.Name.rawValue : "task 4",
             TaskDocumentKey.Description.rawValue : "task description",
             TaskDocumentKey.DueDate.rawValue : Date(),
             TaskDocumentKey.IsImportant.rawValue : false,
             TaskDocumentKey.IsUrgent.rawValue : false
            ]
        ]
    }
    
    override func spec() {
        var dataManager: TaskDashboardFirebaseManager!
        var mockInteractor: MockInteractor!
        
        

        
        describe("TaskDashBoardFirebaseManager") {
            beforeEach {
                dataManager = TaskDashboardFirebaseManager()
                mockInteractor = MockInteractor()
                
                dataManager.output = mockInteractor
            
                for taskDocument in self.taskDocumentTest {
                    waitUntil(timeout: 5) { done in
                        dataManager.tasksCollectionRef.addDocument(data: taskDocument){ err in
                            if  err == nil {
                                done()
                            }
                        }
                    }
                }
            }
            
            context("should success in getting all task document") {
                
                it("should get firebase documents ") {
                    waitUntil(timeout: 5) { done in
                    dataManager.getAllTaskDocuments(completion: { (documents, err) in
                        guard err == nil else {return }
                        if  let documents = documents {
                            expect(documents.count).to(equal(documents.count))
                            done()
                        }
                    })
                    }
                }
                
            }
            
            context("should succees in deletting task document") {
                
            }
        }
    }
}

class MockInteractor: TaskDashboardDataManagerOutput {
    func onGetTaskError(_ message: String) {
        
    }
    
    func onDeleteTaskError(_ message: String) {
        
    }
    
    var tasks = [Task]()
    func onGetTasks(_ task: [Task]) {
        tasks = task
    }
    
    func onDeleteTask() {
        
    }
    
    func onError(_ error: String) {
        
    }
    
    
}

