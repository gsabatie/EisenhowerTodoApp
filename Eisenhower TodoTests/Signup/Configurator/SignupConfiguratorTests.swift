//
//  SignupSignupConfiguratorTests.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 25/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import XCTest
import Quick
import Nimble
@testable import Eisenhower_Todo

class SignupModuleConfiguratorTests: XCTestCase {

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
        let viewController = SignupViewControllerMock()
        let configurator = SignupModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewInput: viewController)

        //then
        XCTAssertNotNil(viewController.output, "SignupViewController is nil after configuration")
        XCTAssertTrue(viewController.output is SignupPresenter, "output is not SignupPresenter")

        let presenter: SignupPresenter = viewController.output as! SignupPresenter
        XCTAssertNotNil(presenter.view, "view in SignupPresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in SignupPresenter is nil after configuration")
        XCTAssertTrue(presenter.router is SignupRouter, "router is not SignupRouter")

        let interactor: SignupInteractor = presenter.interactor as! SignupInteractor
        XCTAssertNotNil(interactor.output, "output in SignupInteractor is nil after configuration")
    }

    class SignupViewControllerMock: SignupViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
