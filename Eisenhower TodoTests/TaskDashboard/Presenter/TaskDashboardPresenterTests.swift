//
//  TaskDashboardTaskDashboardPresenterTests.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import XCTest
@testable import Eisenhower_Todo

class TaskDashboardPresenterTest: XCTestCase {

     var presenter = TaskDashboardPresenter()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

  
    
    
    class MockInteractor: TaskDashboardInteractorInput {
        func delete(task: Task) {
        
        }
        
        
        var tasks = [Task]()
        
        weak var output:TaskDashboardPresenter!
        
        func findAllTask() {
            output.onFetchTaskSuccess(tasks)
        }
        

    }

    class MockRouter: TaskDashboardRouterInput {
        func presentTaskDashBoardModule(fromViewController viewController: UIViewController) {
            
        }
        
        func presentAddTaskModule() {
            
        }
        
        func presentUserProfilModule() {
            
        }
        

    }

    class MockViewController: TaskDashboardViewInput {
        func displayAlertMessage(messageToDisplay: String) {
            
        }
        
        func startDisplayLoading() {
            
        }
        
        func endDisplayLoading() {
            
        }
        
        public var tasks = [Task]()
        
        func display(task: [Task]) {
            self.tasks = task
        }
        

        func setupInitialState() {

        }
    }
}
