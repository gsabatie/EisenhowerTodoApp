//
//  AddTaskAddTaskConfiguratorTests.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 27/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import XCTest

class AddTaskModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
        let viewController = AddTaskViewControllerMock()
        let configurator = AddTaskModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "AddTaskViewController is nil after configuration")
        XCTAssertTrue(viewController.output is AddTaskPresenter, "output is not AddTaskPresenter")

        let presenter: AddTaskPresenter = viewController.output as! AddTaskPresenter
        XCTAssertNotNil(presenter.view, "view in AddTaskPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in AddTaskPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is AddTaskRouter, "router is not AddTaskRouter")

        let interactor: AddTaskInteractor = presenter.interactor as! AddTaskInteractor
        XCTAssertNotNil(interactor.output, "output in AddTaskInteractor is nil after configuration")
    }

    class AddTaskViewControllerMock: AddTaskViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
