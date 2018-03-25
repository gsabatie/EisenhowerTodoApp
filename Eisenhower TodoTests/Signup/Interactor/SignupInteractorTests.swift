//
//  SignupSignupInteractorTests.swift
//  EisenhowerTodoApp
//
//  Created by Guillaume Sabatie on 25/03/2018.
//  Copyright © 2018 EiseinhowerAppTeam. All rights reserved.
//

import XCTest
import Quick
import Nimble
@testable import Eisenhower_Todo

class SignupInteractorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockPresenter: SignupInteractorOutput {
        func createUserDidSucceed() {
            
        }
        
        func createUserDidFailed(message: String) {
            
        }
        

    }
}
