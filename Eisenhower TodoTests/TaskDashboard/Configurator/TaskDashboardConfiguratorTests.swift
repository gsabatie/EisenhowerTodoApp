//
//  TaskDashboardTaskDashboardConfiguratorTests.swift
//  EisenhowerTodoApp
//
//  Created by sabati_g on 25/02/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import XCTest
@testable import Eisenhower_Todo

class TaskDashboardModuleConfiguratorTests: XCTestCase {

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
        let viewController = TaskDashboardViewControllerMock()
        let configurator = TaskDashboardModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "TaskDashboardViewController is nil after configuration")
        XCTAssertTrue(viewController.output is TaskDashboardPresenter, "output is not TaskDashboardPresenter")

        let presenter: TaskDashboardPresenter = viewController.output as! TaskDashboardPresenter
        XCTAssertNotNil(presenter.view, "view in TaskDashboardPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in TaskDashboardPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is TaskDashboardRouter, "router is not TaskDashboardRouter")

        let interactor: TaskDashboardInteractor = presenter.interactor as! TaskDashboardInteractor
        XCTAssertNotNil(interactor.output, "output in TaskDashboardInteractor is nil after configuration")
    }

    class TaskDashboardViewControllerMock: TaskDashboardViewController {

        var setupInitialStateDidCall = false

         override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
