//
//  LoginLoginConfiguratorTests.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 18/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import XCTest
import Quick
import Nimble
@testable import Eisenhower_Todo
class LoginModuleConfiguratorTests: XCTestCase {

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
        let viewController = LoginViewControllerMock()
        let configurator = LoginModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "LoginViewController is nil after configuration")
        XCTAssertTrue(viewController.output is LoginPresenter, "output is not LoginPresenter")

        let presenter: LoginPresenter = viewController.output as! LoginPresenter
        XCTAssertNotNil(presenter.view, "view in LoginPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in LoginPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is LoginRouter, "router is not LoginRouter")

        let interactor: LoginInteractor = presenter.interactor as! LoginInteractor
        XCTAssertNotNil(interactor.output, "output in LoginInteractor is nil after configuration")
    }

    class LoginViewControllerMock: LoginViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
