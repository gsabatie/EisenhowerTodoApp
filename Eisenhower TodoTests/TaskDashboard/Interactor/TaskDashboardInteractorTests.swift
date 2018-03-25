//
//  TaskDashboardTaskDashboardInteractorTests.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import XCTest
import Quick
import Nimble
@testable import Eisenhower_Todo


class TaskDashboardInteractorSpec: QuickSpec {

    override func spec() {
        describe("TaskDashBoardInteractor") {
            
            var interactor  = TaskDashboardInteractor()
            var mockDataManager : MockDataManager!
            var mockPresenter :MockPresenter!
            
            mockPresenter = MockPresenter()
            mockDataManager = MockDataManager()
            
            interactor = TaskDashboardInteractor()
            interactor.dataSource = mockDataManager
            interactor.output = mockPresenter
            mockDataManager.output = interactor
            

            
            context("should success in getting Tasks") {
               interactor.findAllTask()
                it("should call dataManager") {
                    expect(mockDataManager.getTasksAsBeenCalled).to(beTrue())
                }
                it("should call presenter") {
                    expect(mockDataManager.getTasksAsBeenCalled).to(beTrue())
                }
            
                it("should send tasks to the presenter") {
                  expect(mockPresenter.tasks).to(equal(mockDataManager.tasks))
                }
            }
            
            
//            context("should success deleting task") {
//                interactor.delete(task: mockDataManager.exampleTasks[0])
//                it("should call dataManager") {
//                    expect(mockDataManager.deleteTasksAsBeenCalled).to(beTrue())
//                }
//                
//                it("should send success to presenter") {
//                    expect(mockPresenter.onDeleteTaskSuccessHasBeenCalled).to(beTrue())
//                }
//        
//            }
            
              context("should not success deletting task with wrong id") {
                it("should call dataManager") {
                    
                }
                
                it("should receive fail") {
                    
                }
                
                it("should send fail to presenter") {
                    
                }
            }
            
        }
    }
    

    class MockDataManager :TaskDashboardDataManagerInput {
        
        weak var output:TaskDashboardDataManagerOutput!
        
        var tasks = [Task]()
        var getTasksAsBeenCalled = false
        var deleteTasksAsBeenCalled = false
        
        var exampleTasks : [Task] {
            var tasks = [Task]()
        
            tasks.append(Task(id: "1", ownerID: "super", name:  "Une tache", contentDescription: "super description", rolesArray: [Role](), dueDate: Date(), isImportant: false, isUrgent: false))
            return tasks
        }
        
        init() {
            tasks = exampleTasks
        }

        func getTasks() {
            getTasksAsBeenCalled = true
            output.onGetTasks(tasks)
        }
        
        func deleteTask(id: String) {
            deleteTasksAsBeenCalled = true
            var i  = 0
            for task in tasks {
                if task.id == id {
                    tasks.remove(at: i)
                }
                i = i + 1
            }
        }
        
   
    }
    
    class MockPresenter: TaskDashboardInteractorOutput {
        var tasks = [Task]()
        var interactor: TaskDashboardInteractorInput!
        
         var onFetchTaskSuccessHasBeenCalled = false
         var onDeleteTaskSuccessHasBeenCalled = false
        
        func onFetchTaskSuccess(_ tasks: [Task]) {
            self.tasks = tasks
            onFetchTaskSuccessHasBeenCalled = true
        }
        
        func onFetchTaskFailure(message: String) {
            
        }
        
        func onDeleteTaskSuccess() {
            onDeleteTaskSuccessHasBeenCalled = true
        }
        
        func onDeleteTaskFailure(message: String) {
            
        }
        
     
    }
}

extension Task : Equatable {
    public static func ==(lhs: Task, rhs: Task) -> Bool {
        if lhs.contentDescription == rhs.contentDescription
            && lhs.dueDate == rhs.dueDate
            && lhs.id == rhs.id
            && lhs.isImportant == rhs.isImportant
            && lhs.isUrgent == rhs.isUrgent {
            return true
        }
        return false
    }
    
    
}
