//
//  LoginLoginPresenterTests.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 18/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import XCTest
import Quick
import Nimble
@testable import Eisenhower_Todo

class LoginPresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: LoginInteractorInput {
        func signInUser(withUserCredential: UserCredential) {
            
        }
        
        func requestNewPassword() {
            
        }
        

    }

    class MockRouter: LoginRouterInput {
        func presentSignupModule() {
            
        }
        
        func presentSignInModule(fromViewController viewController: UIViewController) {
            
        }
        
        func presentTaskDashBoardModule() {
            
        }
        

    }

    class MockViewController: LoginViewInput {
        func getPassword() -> String? {
            return ""
        }
        
        func getEmail() -> String? {
            return ""
        }
        
        func displayError(message: String) {
            
        }
        

        func setupInitialState() {

        }
    }
}
