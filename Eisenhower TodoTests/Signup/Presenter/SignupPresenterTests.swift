//
//  SignupSignupPresenterTests.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 25/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import XCTest
import Quick
import Nimble
@testable import Eisenhower_Todo

class SignupPresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: SignupInteractorInput {
        func create(user: AppUser, withPassword password: String) {
            
        }
        

    }

    class MockRouter: SignupRouterInput {
        func pushToTasksDashboard() {
            
        }
        

    }

    class MockViewController: SignupViewInput {
        func getUsername() -> String? {
            return ""
        }
        
        func getEmail() -> String? {
            return ""
        }
        
        func getPassword() -> String? {
            return ""
        }
        
        func getSecondPassword() -> String? {
            return ""
        }
        
        func getUserDescription() -> String? {
            return ""
        }
        
        func displaySignupError(message: String) {
            
        }
        

        func setupInitialState() {

        }
    }
}
