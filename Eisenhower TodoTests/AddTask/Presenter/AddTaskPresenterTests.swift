//
//  AddTaskAddTaskPresenterTests.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 27/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import XCTest

class AddTaskPresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: AddTaskInteractorInput {

    }

    class MockRouter: AddTaskRouterInput {

    }

    class MockViewController: AddTaskViewInput {

        func setupInitialState() {

        }
    }
}
